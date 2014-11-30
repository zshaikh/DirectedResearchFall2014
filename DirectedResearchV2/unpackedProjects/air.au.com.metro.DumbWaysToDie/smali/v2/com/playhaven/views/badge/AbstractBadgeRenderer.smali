.class public abstract Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;
.super Ljava/lang/Object;
.source "AbstractBadgeRenderer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/content/Context;Landroid/graphics/Canvas;Lorg/json/JSONObject;)V
.end method

.method public abstract loadResources(Landroid/content/Context;Landroid/content/res/Resources;)V
.end method

.method public abstract size(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/graphics/Rect;
.end method
