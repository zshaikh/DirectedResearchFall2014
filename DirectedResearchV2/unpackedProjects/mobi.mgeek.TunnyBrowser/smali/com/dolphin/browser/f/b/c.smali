.class public Lcom/dolphin/browser/f/b/c;
.super Lcom/dolphin/browser/j/a/a;
.source "Notifications.java"


# instance fields
.field private a:J

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/f/b/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/dolphin/browser/j/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/dolphin/browser/f/b/c;->a:J

    return-wide v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/dolphin/browser/f/b/c;
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p1, :cond_0

    .line 29
    new-instance v0, Lcom/dolphin/browser/f/b/c;

    invoke-direct {v0}, Lcom/dolphin/browser/f/b/c;-><init>()V

    .line 30
    const-string v1, "last_modified"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/f/b/c;->a:J

    .line 31
    const-string v1, "notifications"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/f/b/a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/f/b/c;->b:Ljava/util/List;

    .line 34
    :cond_0
    return-object v0
.end method

.method public synthetic b(Lorg/json/JSONObject;)Lcom/dolphin/browser/j/a/a;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/b/c;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/f/b/c;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/f/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/f/b/c;->b:Ljava/util/List;

    return-object v0
.end method
