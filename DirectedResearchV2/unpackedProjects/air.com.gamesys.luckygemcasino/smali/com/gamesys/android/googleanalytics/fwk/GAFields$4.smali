.class Lcom/gamesys/android/googleanalytics/fwk/GAFields$4;
.super Ljava/lang/Object;
.source "GAFields.java"

# interfaces
.implements Lcom/gamesys/android/googleanalytics/fwk/IGoogleAnalyticsParameter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamesys/android/googleanalytics/fwk/GAFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public generateParameter([Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 155
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "UX"

    const-string v2, "appstart"

    invoke-static {v1, v2, v0, v0}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v0

    const-string v1, "&sc"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v0

    const-string v1, "&sr"

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v0

    .line 160
    const-string v1, "&aiid"

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
