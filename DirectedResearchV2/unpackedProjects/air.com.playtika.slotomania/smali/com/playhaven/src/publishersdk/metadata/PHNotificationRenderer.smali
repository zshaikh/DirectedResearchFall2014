.class public abstract Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;
.super Ljava/lang/Object;
.source "PHNotificationRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Lorg/json/JSONObject;)V
.end method

.method public abstract size(Lorg/json/JSONObject;)Landroid/graphics/Rect;
.end method
