.class Lcom/somo/apptimiser/SomoApptimiser;
.super Ljava/lang/Object;
.source "SomoApptimiser.java"


# static fields
.field static final DEBUG:Z = false

.field static final SERVER_TEMPLATE:Ljava/lang/String; = "http://a[app_id].appsdk.net:8080/ProjectXCollector"

.field static final SERVER_TEMPLATE_VALUE:Ljava/lang/String; = "[app_id]"

.field static final TAG:Ljava/lang/String;

.field static final VERSION:Ljava/lang/String; = "2.0.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/somo/apptimiser/SomoApptimiser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/somo/apptimiser/SomoApptimiser;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
