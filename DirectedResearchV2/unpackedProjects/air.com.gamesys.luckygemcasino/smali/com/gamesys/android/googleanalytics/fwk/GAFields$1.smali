.class Lcom/gamesys/android/googleanalytics/fwk/GAFields$1;
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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public generateParameter([Ljava/lang/String;)Ljava/util/Map;
    .locals 6
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
    .line 41
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 46
    const/4 v1, 0x1

    aget-object v1, p1, v1

    .line 47
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 48
    const/4 v3, 0x3

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 49
    const/4 v4, 0x4

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    .line 50
    const/4 v5, 0x5

    aget-object v5, p1, v5

    .line 45
    invoke-static/range {v0 .. v5}, Lcom/google/analytics/tracking/android/MapBuilder;->createTransaction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
