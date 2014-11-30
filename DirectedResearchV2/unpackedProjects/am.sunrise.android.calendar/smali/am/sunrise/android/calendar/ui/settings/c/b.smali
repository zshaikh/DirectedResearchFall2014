.class public Lam/sunrise/android/calendar/ui/settings/c/b;
.super Ljava/lang/Object;
.source "iCloudClient.java"


# static fields
.field private static a:Lam/sunrise/android/calendar/ui/settings/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/c/b;->a:Lam/sunrise/android/calendar/ui/settings/c/c;

    return-void
.end method

.method public static a()Lam/sunrise/android/calendar/ui/settings/c/c;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/c/b;->a:Lam/sunrise/android/calendar/ui/settings/c/c;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    const-string v1, "https://setup.icloud.com"

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setServer(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    new-instance v1, Lretrofit/android/AndroidApacheClient;

    invoke-direct {v1}, Lretrofit/android/AndroidApacheClient;-><init>()V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    const-class v1, Lam/sunrise/android/calendar/ui/settings/c/c;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/settings/c/c;

    sput-object v0, Lam/sunrise/android/calendar/ui/settings/c/b;->a:Lam/sunrise/android/calendar/ui/settings/c/c;

    .line 51
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/ui/settings/c/b;->a:Lam/sunrise/android/calendar/ui/settings/c/c;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
