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
public class LongListConverter implements AttributeConverter<List<Long>, String> {

    final private static Logger logger = LoggerFactory.getLogger(LongListConverter.class);

    @Override
    public String convertToDatabaseColumn(List<Long> attribute) {
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
    public List<Long> convertToEntityAttribute(String dbData) {
        if (dbData == null) {
            logger.trace("Received a null string");
            return new ArrayList<>(0);
        }
        try {
            return new ObjectMapper().readValue(
                    dbData, new TypeReference<List<Long>>() {
                    });
        } catch (JsonProcessingException e) {
            return new ArrayList<>(0);
        }
    }

}