.class public interface abstract Lam/sunrise/android/calendar/ui/settings/c/c;
.super Ljava/lang/Object;
.source "iCloudClient.java"


# virtual methods
.method public abstract a(Ljava/lang/String;)Lretrofit/client/Response;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Header;
            value = "Authorization"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/setup/get_account_settings"
    .end annotation
.end method
