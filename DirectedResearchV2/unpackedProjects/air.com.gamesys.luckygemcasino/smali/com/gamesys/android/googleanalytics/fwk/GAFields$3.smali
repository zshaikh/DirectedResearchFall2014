.class Lcom/gamesys/android/googleanalytics/fwk/GAFields$3;
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
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public generateParameter([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
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
    .line 126
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/analytics/tracking/android/MapBuilder;->createTiming(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
