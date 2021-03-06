
#include "ESP8266WiFi.h"
#include <ESP8266HTTPClient.h>
#include <string.h>
#include <WiFiClient.h>

const char* ssid = "iPhone (Jakub)";
const char* password = "wv5jgt6bxlji";
String serverName = "https://6735-78-11-141-174.eu.ngrok.io";
int c =10;
String stmData = "";

int sendPost(String data){
  if(WiFi.status()==WL_CONNECTED){
    WiFiClient client1;
    HTTPClient http;
    http.begin(client1, data.c_str());
  
    int httpResponse = http.GET();
    if(httpResponse>0){
      Serial.print("HTTP Response code:");
      Serial.println(httpResponse);
    } else {
      Serial.print("Error code: ");
      Serial.println(httpResponse);
    }
       http.end();
    }
    return 0;
}

void setup() {
  Serial.begin(9600);

  WiFi.begin(ssid, password);
  pinMode(LED_BUILTIN, OUTPUT);

  while (WiFi.status() != WL_CONNECTED){
    digitalWrite(LED_BUILTIN, HIGH);  
    delay(500);
    Serial.println(WiFi.status());                      
    digitalWrite(LED_BUILTIN, LOW);    
    delay(500);   
  }
  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println(WiFi.localIP());
}

void loop() {
  digitalWrite(LED_BUILTIN, HIGH);
  delay(500);
  if(Serial.available() > 0){
    stmData = Serial.readStringUntil('\r\n');
    Serial.println("Info from STM: "+stmData);
    Serial.println(sizeof(stmData));
  }
  delay(1000);
  String tempa = stmData.substring(0, 5);
  String huma = stmData.substring(6, 11);
  String hums = stmData.substring(12, 17);
//    String levels = stmData.substring(18, 23);

  if(tempa.substring(2,3) == "." && huma.substring(2,3) == "." && hums.substring(2,3)=="."){
    String path1 = serverName + "/temperature?" + tempa;
  String path2 = serverName + "/air_humidity?" + huma;
  String path3 = serverName + "/soil_humidity?" + hums;
  int a = sendPost(path1);
  int b = sendPost(path2);
  int c = sendPost(path3);
   }
    c--;
    stmData="";
    if(c==0){
      ESP.restart();
    }
  
}
