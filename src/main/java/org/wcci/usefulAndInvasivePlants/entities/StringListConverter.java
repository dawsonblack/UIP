package org.wcci.usefulAndInvasivePlants.entities;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter
public class StringListConverter implements AttributeConverter<List<String>, String> {

    @Override
    public String convertToDatabaseColumn(List<String> attribute) {
        try {
            return new ObjectMapper().writeValueAsString(attribute);
        } catch (JsonProcessingException e) {
            return "error";
        }
    }

    @Override
    public List<String> convertToEntityAttribute(String dbData) {
        try {
            return new ObjectMapper().readValue(
                    dbData, new TypeReference<List<String>>() {
                    });
        } catch (JsonProcessingException e) {
            return new ArrayList<>(0);
        }
    }

}
