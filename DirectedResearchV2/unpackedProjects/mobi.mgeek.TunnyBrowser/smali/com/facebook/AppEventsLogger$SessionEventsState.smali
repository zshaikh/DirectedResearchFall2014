.class Lcom/facebook/AppEventsLogger$SessionEventsState;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# static fields
.field public static final ENCODED_EVENTS_KEY:Ljava/lang/String; = "encoded_events"

.field public static final EVENT_COUNT_KEY:Ljava/lang/String; = "event_count"

.field public static final NUM_SKIPPED_KEY:Ljava/lang/String; = "num_skipped"


# instance fields
.field private final MAX_ACCUMULATED_LOG_EVENTS:I

.field private accumulatedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

.field private hashedDeviceAndAppId:Ljava/lang/String;

.field private inFlightEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private numSkippedEventsDueToFullBuffer:I

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 943
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 931
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    .line 941
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->MAX_ACCUMULATED_LOG_EVENTS:I

    .line 944
    iput-object p1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    .line 945
    iput-object p2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->packageName:Ljava/lang/String;

    .line 946
    iput-object p3, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->hashedDeviceAndAppId:Ljava/lang/String;

    .line 947
    return-void
.end method

.method private getStringAsByteArray(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 1046
    const/4 v0, 0x0

    .line 1048
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1053
    :goto_0
    return-object v0

    .line 1049
    :catch_0
    move-exception v1

    .line 1051
    const-string v2, "Encoding exception: "

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private populateRequest(Lcom/facebook/Request;ILorg/json/JSONArray;ZZ)V
    .locals 4

    .prologue
    .line 1016
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v0

    .line 1017
    const-string v1, "event"

    const-string v2, "CUSTOM_APP_EVENTS"

    invoke-interface {v0, v1, v2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1019
    iget v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    if-lez v1, :cond_0

    .line 1020
    const-string v1, "num_skipped_events"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1023
    :cond_0
    if-eqz p4, :cond_1

    .line 1024
    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    iget-object v2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->hashedDeviceAndAppId:Ljava/lang/String;

    invoke-static {v0, v1, v2, p5}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    .line 1028
    :cond_1
    const-string v1, "application_package_name"

    iget-object v2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1030
    invoke-virtual {p1, v0}, Lcom/facebook/Request;->setGraphObject(Lcom/facebook/model/GraphObject;)V

    .line 1032
    invoke-virtual {p1}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    .line 1033
    if-nez v0, :cond_2

    .line 1034
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1037
    :cond_2
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1038
    if-eqz v1, :cond_3

    .line 1039
    const-string v2, "custom_events_file"

    invoke-direct {p0, v1}, Lcom/facebook/AppEventsLogger$SessionEventsState;->getStringAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1040
    invoke-virtual {p1, v1}, Lcom/facebook/Request;->setTag(Ljava/lang/Object;)V

    .line 1042
    :cond_3
    invoke-virtual {p1, v0}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 1043
    return-void
.end method


# virtual methods
.method public declared-synchronized accumulatePersistedEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1011
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    monitor-exit p0

    return-void

    .line 1011
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addEvent(Lcom/facebook/AppEventsLogger$AppEvent;)V
    .locals 2

    .prologue
    .line 952
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 953
    iget v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 957
    :goto_0
    monitor-exit p0

    return-void

    .line 955
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 952
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearInFlightAndStats(Z)V
    .locals 2

    .prologue
    .line 964
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 968
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    monitor-exit p0

    return-void

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccumulatedEventCount()I
    .locals 1

    .prologue
    .line 960
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEventsToPersist()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    .line 1004
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    monitor-exit p0

    return-object v0

    .line 1003
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public populateRequest(Lcom/facebook/Request;ZZZ)I
    .locals 6

    .prologue
    .line 976
    monitor-enter p0

    .line 977
    :try_start_0
    iget v2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    .line 980
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 981
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 983
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 984
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/AppEventsLogger$AppEvent;

    .line 985
    if-nez p2, :cond_1

    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AppEvent;->getIsImplicit()Z

    move-result v4

    if-nez v4, :cond_0

    .line 986
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AppEvent;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 993
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 990
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 991
    const/4 v0, 0x0

    monitor-exit p0

    .line 996
    :goto_1
    return v0

    .line 993
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    .line 995
    invoke-direct/range {v0 .. v5}, Lcom/facebook/AppEventsLogger$SessionEventsState;->populateRequest(Lcom/facebook/Request;ILorg/json/JSONArray;ZZ)V

    .line 996
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_1
.end method
