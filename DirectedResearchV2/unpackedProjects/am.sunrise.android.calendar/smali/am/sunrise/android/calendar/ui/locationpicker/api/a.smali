.class public Lam/sunrise/android/calendar/ui/locationpicker/api/a;
.super Ljava/lang/Object;
.source "GoogleLocationClient.java"


# static fields
.field private static a:Lam/sunrise/android/calendar/ui/locationpicker/api/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lam/sunrise/android/calendar/ui/locationpicker/api/a;->a:Lam/sunrise/android/calendar/ui/locationpicker/api/b;

    return-void
.end method

.method public static a()Lam/sunrise/android/calendar/ui/locationpicker/api/b;
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lam/sunrise/android/calendar/ui/locationpicker/api/a;->a:Lam/sunrise/android/calendar/ui/locationpicker/api/b;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    new-instance v1, Lretrofit/converter/GsonConverter;

    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-direct {v1, v2}, Lretrofit/converter/GsonConverter;-><init>(Lcom/google/gson/Gson;)V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setConverter(Lretrofit/converter/Converter;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    const-string v1, "https://maps.googleapis.com"

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setServer(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lretrofit/android/AndroidApacheClient;

    invoke-direct {v1}, Lretrofit/android/AndroidApacheClient;-><init>()V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    const-class v1, Lam/sunrise/android/calendar/ui/locationpicker/api/b;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/api/b;

    sput-object v0, Lam/sunrise/android/calendar/ui/locationpicker/api/a;->a:Lam/sunrise/android/calendar/ui/locationpicker/api/b;

    .line 54
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/ui/locationpicker/api/a;->a:Lam/sunrise/android/calendar/ui/locationpicker/api/b;

    return-object v0
.end method

.method public static a(DD)Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
