.class public interface abstract Lam/sunrise/android/calendar/api/c;
.super Ljava/lang/Object;
.source "SunriseClient.java"


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;I)Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "query"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit/http/Query;
            value = "limit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lam/sunrise/android/calendar/api/models/responses/ArrayResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Contact;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/people/search"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "calendarId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "syncToken"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lam/sunrise/android/calendar/api/models/responses/ArrayResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Event;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/calendars/{calendarId}/events"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "calendarId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "eventId"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lretrofit/http/Query;
            value = "offset"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lam/sunrise/android/calendar/api/models/responses/ArrayResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Person;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/calendars/{calendarId}/events/{eventId}/attendees"
    .end annotation
.end method

.method public abstract a(Lam/sunrise/android/calendar/api/models/requests/GooglePlusAuthRequest;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;
    .param p1    # Lam/sunrise/android/calendar/api/models/requests/GooglePlusAuthRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lam/sunrise/android/calendar/api/models/requests/GooglePlusAuthRequest;",
            ")",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Authentication;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/PUT;
        value = "/users/authenticate/google/token"
    .end annotation
.end method

.method public abstract a(Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;
    .param p1    # Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;",
            ")",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Authentication;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/PUT;
        value = "/users/authenticate/facebook/token"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Profile;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/users/me"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/requests/EventRequest;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "calendarId"
        .end annotation
    .end param
    .param p3    # Lam/sunrise/android/calendar/api/models/requests/EventRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lam/sunrise/android/calendar/api/models/requests/EventRequest;",
            ")",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Event;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/calendars/{calendarId}/events"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/RSVP;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "calendarId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "eventId"
        .end annotation
    .end param
    .param p4    # Lam/sunrise/android/calendar/api/models/datas/RSVP;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lam/sunrise/android/calendar/api/models/datas/RSVP;",
            ")",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Event;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/PUT;
        value = "/calendars/{calendarId}/events/{eventId}/rsvp"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/requests/EventRequest;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "calendarId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "eventId"
        .end annotation
    .end param
    .param p4    # Lam/sunrise/android/calendar/api/models/requests/EventRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lam/sunrise/android/calendar/api/models/requests/EventRequest;",
            ")",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Event;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/PUT;
        value = "/calendars/{calendarId}/events/{eventId}"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/SimpleResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "calendarId"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "eventId"
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Lretrofit/http/Query;
            value = "skipNotificationEmail"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "parentId"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "originalStart"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lam/sunrise/android/calendar/api/models/responses/SimpleResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Event;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/DELETE;
        value = "/calendars/{calendarId}/events/{eventId}"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Lam/sunrise/android/calendar/api/models/requests/GooglePlusAuthRequest;)Lretrofit/client/Response;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Lam/sunrise/android/calendar/api/models/requests/GooglePlusAuthRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/PUT;
        value = "/connections/google/token"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Lretrofit/client/Response;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "connectionId"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/DELETE;
        value = "/connections/{connectionId}"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;)Lretrofit/client/Response;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "connectionType"
        .end annotation
    .end param
    .param p3    # Lam/sunrise/android/calendar/api/models/requests/SignInUpRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/PUT;
        value = "/connections/{connectionType}/token"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/api/models/responses/ArrayResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "calendarId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lam/sunrise/android/calendar/api/models/responses/ArrayResponse",
            "<",
            "Lam/sunrise/android/calendar/api/models/datas/Contact;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/people/suggested"
    .end annotation
.end method
