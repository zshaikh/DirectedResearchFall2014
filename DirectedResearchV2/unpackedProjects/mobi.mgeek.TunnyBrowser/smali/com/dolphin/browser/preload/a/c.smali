.class public Lcom/dolphin/browser/preload/a/c;
.super Ljava/lang/Object;
.source "Gesture.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/dolphin/browser/preload/a/c;
    .locals 2

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/dolphin/browser/preload/a/c;

    invoke-direct {v0}, Lcom/dolphin/browser/preload/a/c;-><init>()V

    .line 40
    const-string v1, "user_gesture_file"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/preload/a/c;->a:Ljava/lang/String;

    .line 42
    const-string v1, "marked_file"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/preload/a/c;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dolphin/browser/preload/a/c;->b:Ljava/lang/String;

    return-object v0
.end method
