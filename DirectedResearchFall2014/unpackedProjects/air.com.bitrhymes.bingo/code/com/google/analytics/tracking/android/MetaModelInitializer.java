package com.google.analytics.tracking.android;

import java.text.*;

class MetaModelInitializer
{
    private static final MetaModel.Formatter BOOLEAN_FORMATTER;
    private static final MetaModel.Formatter UP_TO_TWO_DIGIT_FLOAT_FORMATTER;
    
    static {
        BOOLEAN_FORMATTER = new MetaModel.Formatter() {
            @Override
            public String format(final String s) {
                if (Utils.safeParseBoolean(s)) {
                    return "1";
                }
                return "0";
            }
        };
        UP_TO_TWO_DIGIT_FLOAT_FORMATTER = new MetaModel.Formatter() {
            private final DecimalFormat mFloatFormat = new DecimalFormat("0.##");
            
            @Override
            public String format(final String s) {
                return this.mFloatFormat.format(Utils.safeParseDouble(s));
            }
        };
    }
    
    public static void set(final MetaModel metaModel) {
        metaModel.addField("apiVersion", "v", null, null);
        metaModel.addField("libraryVersion", "_v", null, null);
        metaModel.addField("anonymizeIp", "aip", "0", MetaModelInitializer.BOOLEAN_FORMATTER);
        metaModel.addField("trackingId", "tid", null, null);
        metaModel.addField("hitType", "t", null, null);
        metaModel.addField("sessionControl", "sc", null, null);
        metaModel.addField("adSenseAdMobHitId", "a", null, null);
        metaModel.addField("usage", "_u", null, null);
        metaModel.addField("title", "dt", null, null);
        metaModel.addField("referrer", "dr", null, null);
        metaModel.addField("language", "ul", null, null);
        metaModel.addField("encoding", "de", null, null);
        metaModel.addField("page", "dp", null, null);
        metaModel.addField("screenColors", "sd", null, null);
        metaModel.addField("screenResolution", "sr", null, null);
        metaModel.addField("viewportSize", "vp", null, null);
        metaModel.addField("javaEnabled", "je", "1", MetaModelInitializer.BOOLEAN_FORMATTER);
        metaModel.addField("flashVersion", "fl", null, null);
        metaModel.addField("clientId", "cid", null, null);
        metaModel.addField("campaignName", "cn", null, null);
        metaModel.addField("campaignSource", "cs", null, null);
        metaModel.addField("campaignMedium", "cm", null, null);
        metaModel.addField("campaignKeyword", "ck", null, null);
        metaModel.addField("campaignContent", "cc", null, null);
        metaModel.addField("campaignId", "ci", null, null);
        metaModel.addField("gclid", "gclid", null, null);
        metaModel.addField("dclid", "dclid", null, null);
        metaModel.addField("gmob_t", "gmob_t", null, null);
        metaModel.addField("eventCategory", "ec", null, null);
        metaModel.addField("eventAction", "ea", null, null);
        metaModel.addField("eventLabel", "el", null, null);
        metaModel.addField("eventValue", "ev", null, null);
        metaModel.addField("nonInteraction", "ni", "0", MetaModelInitializer.BOOLEAN_FORMATTER);
        metaModel.addField("socialNetwork", "sn", null, null);
        metaModel.addField("socialAction", "sa", null, null);
        metaModel.addField("socialTarget", "st", null, null);
        metaModel.addField("appName", "an", null, null);
        metaModel.addField("appVersion", "av", null, null);
        metaModel.addField("description", "cd", null, null);
        metaModel.addField("appId", "aid", null, null);
        metaModel.addField("appInstallerId", "aiid", null, null);
        metaModel.addField("transactionId", "ti", null, null);
        metaModel.addField("transactionAffiliation", "ta", null, null);
        metaModel.addField("transactionShipping", "ts", null, null);
        metaModel.addField("transactionTotal", "tr", null, null);
        metaModel.addField("transactionTax", "tt", null, null);
        metaModel.addField("currencyCode", "cu", null, null);
        metaModel.addField("itemPrice", "ip", null, null);
        metaModel.addField("itemCode", "ic", null, null);
        metaModel.addField("itemName", "in", null, null);
        metaModel.addField("itemCategory", "iv", null, null);
        metaModel.addField("itemQuantity", "iq", null, null);
        metaModel.addField("exDescription", "exd", null, null);
        metaModel.addField("exFatal", "exf", "1", MetaModelInitializer.BOOLEAN_FORMATTER);
        metaModel.addField("timingVar", "utv", null, null);
        metaModel.addField("timingValue", "utt", null, null);
        metaModel.addField("timingCategory", "utc", null, null);
        metaModel.addField("timingLabel", "utl", null, null);
        metaModel.addField("sampleRate", "sf", "100", MetaModelInitializer.UP_TO_TWO_DIGIT_FLOAT_FORMATTER);
        metaModel.addField("hitTime", "ht", null, null);
        metaModel.addField("customDimension", "cd", null, null);
        metaModel.addField("customMetric", "cm", null, null);
        metaModel.addField("contentGrouping", "cg", null, null);
    }
}
