package com.facebook;

import com.facebook.internal.*;
import java.io.*;
import org.json.*;
import android.os.*;
import com.facebook.model.*;
import java.util.*;

class AppEventsLogger$SessionEventsState
{
    public static final String ENCODED_EVENTS_KEY = "encoded_events";
    public static final String EVENT_COUNT_KEY = "event_count";
    public static final String NUM_SKIPPED_KEY = "num_skipped";
    private final int MAX_ACCUMULATED_LOG_EVENTS;
    private List<AppEventsLogger$AppEvent> accumulatedEvents;
    private String attributionId;
    private String hashedDeviceAndAppId;
    private List<AppEventsLogger$AppEvent> inFlightEvents;
    private int numSkippedEventsDueToFullBuffer;
    private String packageName;
    
    public AppEventsLogger$SessionEventsState(final String attributionId, final String packageName, final String hashedDeviceAndAppId) {
        super();
        this.accumulatedEvents = new ArrayList<AppEventsLogger$AppEvent>();
        this.inFlightEvents = new ArrayList<AppEventsLogger$AppEvent>();
        this.MAX_ACCUMULATED_LOG_EVENTS = 1000;
        this.attributionId = attributionId;
        this.packageName = packageName;
        this.hashedDeviceAndAppId = hashedDeviceAndAppId;
    }
    
    private byte[] getStringAsByteArray(final String s) {
        try {
            return s.getBytes("UTF-8");
        }
        catch (UnsupportedEncodingException ex) {
            Utility.logd("Encoding exception: ", ex);
            return null;
        }
    }
    
    private void populateRequest(final Request request, final int i, final JSONArray jsonArray, final boolean b, final boolean b2) {
        final GraphObject create = GraphObject$Factory.create();
        create.setProperty("event", "CUSTOM_APP_EVENTS");
        if (this.numSkippedEventsDueToFullBuffer > 0) {
            create.setProperty("num_skipped_events", i);
        }
        if (b) {
            Utility.setAppEventAttributionParameters(create, this.attributionId, this.hashedDeviceAndAppId, b2);
        }
        create.setProperty("application_package_name", this.packageName);
        request.setGraphObject(create);
        Bundle parameters = request.getParameters();
        if (parameters == null) {
            parameters = new Bundle();
        }
        final String string = jsonArray.toString();
        if (string != null) {
            parameters.putByteArray("custom_events_file", this.getStringAsByteArray(string));
            request.setTag(string);
        }
        request.setParameters(parameters);
    }
    
    public void accumulatePersistedEvents(final List<AppEventsLogger$AppEvent> list) {
        synchronized (this) {
            this.accumulatedEvents.addAll(list);
        }
    }
    
    public void addEvent(final AppEventsLogger$AppEvent appEventsLogger$AppEvent) {
        synchronized (this) {
            if (this.accumulatedEvents.size() + this.inFlightEvents.size() >= 1000) {
                ++this.numSkippedEventsDueToFullBuffer;
            }
            else {
                this.accumulatedEvents.add(appEventsLogger$AppEvent);
            }
        }
    }
    
    public void clearInFlightAndStats(final boolean b) {
        // monitorenter(this)
        Label_0020: {
            if (!b) {
                break Label_0020;
            }
            try {
                this.accumulatedEvents.addAll(this.inFlightEvents);
                this.inFlightEvents.clear();
                this.numSkippedEventsDueToFullBuffer = 0;
            }
            finally {
            }
            // monitorexit(this)
        }
    }
    
    public int getAccumulatedEventCount() {
        synchronized (this) {
            return this.accumulatedEvents.size();
        }
    }
    
    public List<AppEventsLogger$AppEvent> getEventsToPersist() {
        synchronized (this) {
            final List<AppEventsLogger$AppEvent> accumulatedEvents = this.accumulatedEvents;
            this.accumulatedEvents = new ArrayList<AppEventsLogger$AppEvent>();
            return accumulatedEvents;
        }
    }
    
    public int populateRequest(final Request request, final boolean b, final boolean b2, final boolean b3) {
        final int numSkippedEventsDueToFullBuffer;
        final JSONArray jsonArray;
        synchronized (this) {
            numSkippedEventsDueToFullBuffer = this.numSkippedEventsDueToFullBuffer;
            this.inFlightEvents.addAll(this.accumulatedEvents);
            this.accumulatedEvents.clear();
            jsonArray = new JSONArray();
            for (final AppEventsLogger$AppEvent appEventsLogger$AppEvent : this.inFlightEvents) {
                if (b || !appEventsLogger$AppEvent.getIsImplicit()) {
                    jsonArray.put((Object)appEventsLogger$AppEvent.getJSONObject());
                }
            }
        }
        if (jsonArray.length() == 0) {
            // monitorexit(this)
            return 0;
        }
        // monitorexit(this)
        this.populateRequest(request, numSkippedEventsDueToFullBuffer, jsonArray, b2, b3);
        return jsonArray.length();
    }
}
