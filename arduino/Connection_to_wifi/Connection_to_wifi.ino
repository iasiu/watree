
#include "ESP8266WiFi.h"
#include <ESP8266HTTPClient.h>
#include <string.h>
#include <WiFiClient.h>

const char* ssid = "PLAY INTERNET 4G LTE-3E93";
const char* password = "a.c.doyle";
String serverName = "";
String stmData = "";

int sendPost(String data){
  WiFiClient client;
  HTTPClient http;
  http.begin(client, data.c_str());

  int httpResponse = http.GET();
  if(httpResponse>0){
    Serial.print("HTTP Response code:");
    Serial.println(httpResponse);
    Serial.println(http.getString());
  } else {
    Serial.print("Error code:");
    Serial.println(httpResponse);
  }

  http.end();
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
  digitalWrite(LED_BUILTIN, LOW);
  if((Serial.available() > 0) && (WiFi.status() == WL_CONNECTED)){
    stmData = Serial.readStringUntil('\n');
    Serial.println("Sending info from STM: "+stmData);
    if(strstr(stmData.c_str(), "HUMA")){
      String path = serverName + "?" + stmData;      
    }
    if(strstr(stmData.c_str(), "HUMG")){
      String path = serverName + "?" + stmData;      
    }
    if(strstr(stmData.c_str(), "TEM")){
      String path = serverName + "?" + stmData;      
    }
  }
}
