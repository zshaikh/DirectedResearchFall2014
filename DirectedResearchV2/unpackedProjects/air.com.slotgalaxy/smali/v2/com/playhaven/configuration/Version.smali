.class public final Lv2/com/playhaven/configuration/Version;
.super Ljava/lang/Object;
.source "Version.java"


# static fields
.field public static BANNER:Ljava/lang/String;

.field public static BANNER_FULL:Ljava/lang/String;

.field public static PLUGIN_BUILD_TIME:Ljava/lang/String;

.field public static PROJECT_ARTIFACT:Ljava/lang/String;

.field public static PROJECT_GROUP:Ljava/lang/String;

.field public static PROJECT_NAME:Ljava/lang/String;

.field public static PROJECT_VERSION:Ljava/lang/String;

.field public static SERVER_BUILD_ID:Ljava/lang/String;

.field public static SERVER_BUILD_PLAN:Ljava/lang/String;

.field public static SERVER_BUILD_TIME:Ljava/lang/String;

.field public static SOURCE_BRANCH:Ljava/lang/String;

.field public static SOURCE_DIRTY:Ljava/lang/Boolean;

.field public static SOURCE_VERSION:Ljava/lang/String;

.field public static SOURCE_WORKING_COPY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-string v2, ""

    const-string v1, "N/A"

    .line 7
    const-string v0, "2013-05-27 18:19"

    sput-object v0, Lv2/com/playhaven/configuration/Version;->PLUGIN_BUILD_TIME:Ljava/lang/String;

    .line 9
    const-string v0, "Playhaven API"

    sput-object v0, Lv2/com/playhaven/configuration/Version;->PROJECT_NAME:Ljava/lang/String;

    .line 10
    const-string v0, "com.playhaven.androidsdk"

    sput-object v0, Lv2/com/playhaven/configuration/Version;->PROJECT_GROUP:Ljava/lang/String;

    .line 11
    const-string v0, "playhaven"

    sput-object v0, Lv2/com/playhaven/configuration/Version;->PROJECT_ARTIFACT:Ljava/lang/String;

    .line 12
    const-string v0, "1.12.5"

    sput-object v0, Lv2/com/playhaven/configuration/Version;->PROJECT_VERSION:Ljava/lang/String;

    .line 13
    const-string v0, ""

    sput-object v2, Lv2/com/playhaven/configuration/Version;->SOURCE_VERSION:Ljava/lang/String;

    .line 14
    const-string v0, ""

    sput-object v2, Lv2/com/playhaven/configuration/Version;->SOURCE_BRANCH:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lv2/com/playhaven/configuration/Version;->SOURCE_DIRTY:Ljava/lang/Boolean;

    .line 16
    const-string v0, "C:/dev/eclipse"

    sput-object v0, Lv2/com/playhaven/configuration/Version;->SOURCE_WORKING_COPY:Ljava/lang/String;

    .line 18
    const-string v0, "N/A"

    sput-object v1, Lv2/com/playhaven/configuration/Version;->SERVER_BUILD_PLAN:Ljava/lang/String;

    .line 19
    const-string v0, "N/A"

    sput-object v1, Lv2/com/playhaven/configuration/Version;->SERVER_BUILD_ID:Ljava/lang/String;

    .line 20
    const-string v0, "N/A"

    sput-object v1, Lv2/com/playhaven/configuration/Version;->SERVER_BUILD_TIME:Ljava/lang/String;

    .line 22
    const-string v0, "Build info: Playhaven API version 1.12.5 built on 2013-05-27 18:19 source version , build id: N/A-N/A."

    sput-object v0, Lv2/com/playhaven/configuration/Version;->BANNER_FULL:Ljava/lang/String;

    .line 23
    const-string v0, "1.12.5- 2013-05-27 18:19 "

    sput-object v0, Lv2/com/playhaven/configuration/Version;->BANNER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
