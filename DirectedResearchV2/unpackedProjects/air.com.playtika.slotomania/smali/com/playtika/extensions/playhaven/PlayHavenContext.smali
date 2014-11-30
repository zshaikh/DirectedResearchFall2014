.class public Lcom/playtika/extensions/playhaven/PlayHavenContext;
.super Lcom/adobe/fre/FREContext;
.source "PlayHavenContext.java"


# static fields
.field private static final EVENT_CONTENT:Ljava/lang/String; = "CONTENT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 27
    const-string v0, "CONTENT"

    invoke-virtual {p0, v0, p1}, Lcom/playtika/extensions/playhaven/PlayHavenContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .local v0, "functionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "init"

    new-instance v2, Lcom/playtika/extensions/playhaven/PlayHavenInitFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/playhaven/PlayHavenInitFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "show"

    new-instance v2, Lcom/playtika/extensions/playhaven/PlayHavenShowFunction;

    invoke-direct {v2}, Lcom/playtika/extensions/playhaven/PlayHavenShowFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-object v0
.end method
