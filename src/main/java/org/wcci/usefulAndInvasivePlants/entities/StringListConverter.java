package org.wcci.usefulAndInvasivePlants.entities;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter
public class StringListConverter implements AttributeConverter<List<String>, String> {

    final private static Logger logger = LoggerFactory.getLogger(StringListConverter.class);

    @Override
    public String convertToDatabaseColumn(List<String> attribute) {
        if (attribute == null) {
            logger.warn("Received a null list");
            return "";
        }
        try {
            return new ObjectMapper().writeValueAsString(attribute);
        } catch (JsonProcessingException e) {
            return "error";
        }
    }

    @Override
    public List<String> convertToEntityAttribute(String dbData) {
        if (dbData == null) {
            logger.trace("Received a null string");
            return new ArrayList<>(0);
        }
        try {
            return new ObjectMapper().readValue(
                    dbData, new TypeReference<List<String>>() {
                    });
        } catch (JsonProcessingException e) {
            return new ArrayList<>(0);
        }
    }

}
