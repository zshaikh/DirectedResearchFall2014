.class Lcom/gamesys/android/googleanalytics/fwk/GAFields$5;
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
    .line 165
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
    const/4 v2, 0x0

    .line 174
    const-string v0, "UX"

    const-string v1, "appstop"

    invoke-static {v0, v1, v2, v2}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
