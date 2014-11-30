.class public Lcom/bugsense/trace/G;
.super Ljava/lang/Object;


# static fields
.field public static ANALYTICS_URL:Ljava/lang/String; = null

.field public static ANDROID_VERSION:Ljava/lang/String; = null

.field public static API_KEY:Ljava/lang/String; = null

.field public static APP_PACKAGE:Ljava/lang/String; = null

.field public static APP_VERSION:Ljava/lang/String; = null

.field public static APP_VERSIONCODE:Ljava/lang/String; = null

.field public static final BUGSENSE_VERSION:Ljava/lang/String; = "3.2.3"

.field public static final CRASH_READ_COMPLETED:Ljava/lang/String; = "CRASH_READ_COMPLETED"

.field public static FILES_PATH:Ljava/lang/String; = null

.field public static HAS_ROOT:Z = false

.field public static IS_GPS_ON:I = 0x0

.field public static IS_MOBILENET_ON:I = 0x0

.field public static IS_WIFI_ON:I = 0x0

.field public static LOCALE:Ljava/lang/String; = null

.field public static LOG_FILTER:Ljava/lang/String; = null

.field public static LOG_LINES:I = 0x0

.field public static final MAX_BREADCRUMBS:I = 0x10

.field public static PHONE_BRAND:Ljava/lang/String; = null

.field public static PHONE_MODEL:Ljava/lang/String; = null

.field public static final PINGS_READ_COMPLETED:Ljava/lang/String; = "PINGS_READ_COMPLETED"

.field public static SCREEN_PROPS:[Ljava/lang/String;

.field public static SEND_LOG:Z

.field public static TAG:Ljava/lang/String;

.field public static TIMESTAMP:J

.field public static UID:Ljava/lang/String;

.field public static URL:Ljava/lang/String;

.field public static breadcrumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static proxyEnabled:Z

.field public static sendOnlyWiFi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v3, 0x2

    const/4 v2, 0x0

    const-string v4, ""

    const-string v1, "unknown"

    const/4 v0, 0x0

    sput-object v0, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v1, Lcom/bugsense/trace/G;->APP_VERSION:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v1, Lcom/bugsense/trace/G;->APP_VERSIONCODE:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v1, Lcom/bugsense/trace/G;->APP_PACKAGE:Ljava/lang/String;

    const-string v0, "https://bugsense.appspot.com/api/errors"

    sput-object v0, Lcom/bugsense/trace/G;->URL:Ljava/lang/String;

    const-string v0, "https://ticks2.bugsense.com/api/ticks/"

    sput-object v0, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    const-string v0, "BugSenseHandler"

    sput-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v1, Lcom/bugsense/trace/G;->ANDROID_VERSION:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v1, Lcom/bugsense/trace/G;->PHONE_MODEL:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v1, Lcom/bugsense/trace/G;->PHONE_BRAND:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v1, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    sput-boolean v2, Lcom/bugsense/trace/G;->HAS_ROOT:Z

    const-string v0, "unknown"

    sput-object v1, Lcom/bugsense/trace/G;->LOCALE:Ljava/lang/String;

    const-string v0, ""

    sput-object v4, Lcom/bugsense/trace/G;->UID:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/bugsense/trace/G;->breadcrumbs:Ljava/util/ArrayList;

    sput-boolean v2, Lcom/bugsense/trace/G;->SEND_LOG:Z

    const-string v0, ""

    sput-object v4, Lcom/bugsense/trace/G;->LOG_FILTER:Ljava/lang/String;

    const/16 v0, 0x1388

    sput v0, Lcom/bugsense/trace/G;->LOG_LINES:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/bugsense/trace/G;->TIMESTAMP:J

    sput-boolean v2, Lcom/bugsense/trace/G;->proxyEnabled:Z

    sput v3, Lcom/bugsense/trace/G;->IS_WIFI_ON:I

    sput v3, Lcom/bugsense/trace/G;->IS_MOBILENET_ON:I

    sput v3, Lcom/bugsense/trace/G;->IS_GPS_ON:I

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/bugsense/trace/G;->SCREEN_PROPS:[Ljava/lang/String;

    sput-boolean v2, Lcom/bugsense/trace/G;->sendOnlyWiFi:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
