.class public Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;
.super Ljava/lang/Object;
.source "JsonSummaryMarshaller.java"

# interfaces
.implements Lcom/amazon/ags/client/whispersync/savedgame/SummaryMarshaller;


# static fields
.field private static final DESCRIPTION_KEY:Ljava/lang/String; = "Description"

.field private static final DEVICE_ID_KEY:Ljava/lang/String; = "DeviceId"

.field private static final FEATURE_NAME:Ljava/lang/String; = "STC"

.field private static final MD5_KEY:Ljava/lang/String; = "MD5"

.field private static final SAVE_TIME_KEY:Ljava/lang/String; = "SaveTime"

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION_KEY:Ljava/lang/String; = "Version"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makeSummary(Lorg/json/JSONObject;)Lcom/amazon/ags/client/whispersync/GameSummary;
    .locals 8
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 77
    const-string v0, "Version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "version":Ljava/lang/String;
    const-string v0, "MD5"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "md5":Ljava/lang/String;
    new-instance v3, Ljava/util/Date;

    const-string v0, "SaveTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 80
    .local v3, "saveTime":Ljava/util/Date;
    const-string v0, "Description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "description":Ljava/lang/String;
    const-string v0, "DeviceId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "device":Ljava/lang/String;
    new-instance v0, Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final marshal(Lcom/amazon/ags/client/whispersync/GameSummary;)Ljava/lang/String;
    .locals 6
    .param p1, "summary"    # Lcom/amazon/ags/client/whispersync/GameSummary;

    .prologue
    const/4 v5, 0x0

    .line 29
    if-nez p1, :cond_0

    move-object v2, v5

    .line 43
    :goto_0
    return-object v2

    .line 32
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "Version"

    invoke-interface {p1}, Lcom/amazon/ags/client/whispersync/GameSummary;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v2, "MD5"

    invoke-interface {p1}, Lcom/amazon/ags/client/whispersync/GameSummary;->getMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v2, "SaveTime"

    invoke-interface {p1}, Lcom/amazon/ags/client/whispersync/GameSummary;->getSaveDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 37
    const-string v2, "Description"

    invoke-interface {p1}, Lcom/amazon/ags/client/whispersync/GameSummary;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v2, "DeviceId"

    invoke-interface {p1}, Lcom/amazon/ags/client/whispersync/GameSummary;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 39
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to compose JSON object for Summary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 41
    goto :goto_0
.end method

.method public final unmarshal(Ljava/lang/String;)Lcom/amazon/ags/client/whispersync/GameSummary;
    .locals 6
    .param p1, "jsonSummary"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 48
    if-nez p1, :cond_0

    move-object v2, v5

    .line 56
    :goto_0
    return-object v2

    .line 52
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "json":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;->makeSummary(Lorg/json/JSONObject;)Lcom/amazon/ags/client/whispersync/GameSummary;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 54
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid JSON doc for Saved Game Summary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 56
    goto :goto_0
.end method

.method public final unmarshalArray(Ljava/lang/String;)[Lcom/amazon/ags/client/whispersync/GameSummary;
    .locals 7
    .param p1, "jsonSummaries"    # Ljava/lang/String;

    .prologue
    .line 63
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 64
    .local v4, "summaryArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v2, v5, [Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;

    .line 65
    .local v2, "summaries":[Lcom/amazon/ags/client/whispersync/GameSummary;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 66
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 67
    .local v3, "summary":Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;->makeSummary(Lorg/json/JSONObject;)Lcom/amazon/ags/client/whispersync/GameSummary;

    move-result-object v5

    aput-object v5, v2, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "summary":Lorg/json/JSONObject;
    :cond_0
    move-object v5, v2

    .line 72
    .end local v1    # "i":I
    .end local v2    # "summaries":[Lcom/amazon/ags/client/whispersync/GameSummary;
    .end local v4    # "summaryArray":Lorg/json/JSONArray;
    :goto_1
    return-object v5

    .line 70
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/amazon/ags/client/whispersync/savedgame/JsonSummaryMarshaller;->TAG:Ljava/lang/String;

    const-string v6, "Invalid JSON doc for Summaries List"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/amazon/ags/client/whispersync/savedgame/SimpleGameSummary;

    goto :goto_1
.end method
