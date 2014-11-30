.class public interface abstract Lam/sunrise/android/calendar/ui/locationpicker/api/b;
.super Ljava/lang/Object;
.source "GoogleLocationClient.java"


# virtual methods
.method public abstract a(Ljava/lang/String;)Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/DetailedLocationResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "reference"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/maps/api/place/details/json?key=AIzaSyCe52626BXc9lkJxTB8ahZUWre0O5PJvfY&sensor=true"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;J)Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/DetailedTimeZoneResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "location"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lretrofit/http/Query;
            value = "timestamp"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/maps/api/timezone/json?sensor=true"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/ui/locationpicker/api/models/responses/PredictionsResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "input"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "location"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/maps/api/place/autocomplete/json?key=AIzaSyCe52626BXc9lkJxTB8ahZUWre0O5PJvfY&sensor=true"
    .end annotation
.end method
