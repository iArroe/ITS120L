package com.ITS120L.Project.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.*;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class CohereService {

    private static final String API_KEY = "Yihz3CCTXgd8OcdfUHTGkaQNAO7Vze4b99Ui1cql";
    private static final String API_URL = "https://api.cohere.ai/generate";

    public String generateText(String prompt) {
        RestTemplate restTemplate = new RestTemplate();

        HttpHeaders headers = new HttpHeaders();
        headers.set("Authorization", "Bearer " + API_KEY);
        headers.setContentType(MediaType.APPLICATION_JSON);

        String jsonBody = String.format(
                "{\"model\": \"command-r-08-2024\", \"prompt\": \"%s\", \"max_tokens\": 255, \"temperature\": 0.7}",
                prompt
        );

        HttpEntity<String> entity = new HttpEntity<>(jsonBody, headers);
        ResponseEntity<String> response = restTemplate.exchange(API_URL, HttpMethod.POST, entity, String.class);

        if (response.getStatusCode() == HttpStatus.OK) {
            try {
                JsonNode responseJson = new ObjectMapper().readTree(response.getBody());
                return responseJson.get("text").asText();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return "Error generating text with Cohere API";
    }
}
