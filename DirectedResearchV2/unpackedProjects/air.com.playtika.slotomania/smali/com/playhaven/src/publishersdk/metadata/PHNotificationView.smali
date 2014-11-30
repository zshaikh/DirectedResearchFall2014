.class public Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;
.super Landroid/view/View;
.source "PHNotificationView.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest$Delegate;


# static fields
.field private static renderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private notificationData:Lorg/json/JSONObject;

.field private notificationRenderer:Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

.field private placement:Ljava/lang/String;

.field public request:Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->renderMap:Ljava/util/HashMap;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "placement"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->placement:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static getRenderMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->renderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static initRenderers()V
    .locals 3

    .prologue
    .line 132
    sget-object v0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->renderMap:Ljava/util/HashMap;

    const-string v1, "badge"

    const-class v2, Lcom/playhaven/src/publishersdk/metadata/PHNotificationBadgeRenderer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public static setRenderer(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .param p0, "renderer"    # Ljava/lang/Class;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 125
    .local v0, "superclass":Ljava/lang/Class;
    const-class v1, Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    if-eq v0, v1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot create a new renderer of type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it does not implement the PHNotificationRenderer interface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_0
    sget-object v1, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->renderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->request:Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    .line 76
    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationData:Lorg/json/JSONObject;

    .line 77
    return-void
.end method

.method public createRenderer(Lorg/json/JSONObject;)Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;
    .locals 8
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 103
    sget-object v4, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->renderMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->initRenderers()V

    .line 105
    :cond_0
    const-string v4, "type"

    const-string v5, "badge"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "type":Ljava/lang/String;
    const/4 v2, 0x0

    .line 109
    .local v2, "renderer":Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;
    :try_start_0
    sget-object v4, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->renderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 110
    .local v1, "render_class":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/res/Resources;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "renderer":Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;
    check-cast v2, Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "render_class":Ljava/lang/Class;
    .restart local v2    # "renderer":Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Created subclass of PHNotificationRenderer of type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 117
    return-object v2

    .line 111
    .end local v2    # "renderer":Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PHNotificationView - createRenderer"

    sget-object v5, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v4, v5}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    .line 113
    const/4 v2, 0x0

    .restart local v2    # "renderer":Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;
    goto :goto_0
.end method

.method public getNotificationData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getNotificationRenderer()Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationRenderer:Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->placement:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->request:Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationRenderer:Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    if-nez v1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationRenderer:Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    iget-object v2, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationData:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v2}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;->draw(Landroid/graphics/Canvas;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHNotificationView - onDraw"

    sget-object v2, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 153
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 154
    .local v1, "size":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationRenderer:Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationRenderer:Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    iget-object v3, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationData:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;->size(Lorg/json/JSONObject;)Landroid/graphics/Rect;

    move-result-object v1

    .line 157
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "size":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PHNotificationView - onDraw"

    sget-object v3, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v2, v3}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method

.method public refresh()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->placement:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;-><init>(Landroid/content/Context;Lcom/playhaven/src/common/PHAPIRequest$Delegate;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->request:Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    .line 70
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->request:Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    invoke-virtual {v0}, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->send()V

    .line 71
    return-void
.end method

.method public requestFailed(Lcom/playhaven/src/common/PHAPIRequest;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->request:Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    .line 182
    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->updateNotificationData(Lorg/json/JSONObject;)V

    .line 183
    return-void
.end method

.method public requestSucceeded(Lcom/playhaven/src/common/PHAPIRequest;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "request"    # Lcom/playhaven/src/common/PHAPIRequest;
    .param p2, "responseData"    # Lorg/json/JSONObject;

    .prologue
    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->request:Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;

    .line 172
    const-string v1, "notification"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 174
    .local v0, "notification":Lorg/json/JSONObject;
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 176
    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->updateNotificationData(Lorg/json/JSONObject;)V

    .line 177
    :cond_0
    return-void
.end method

.method public updateNotificationData(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 84
    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationData:Lorg/json/JSONObject;

    .line 87
    invoke-virtual {p0, p1}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->createRenderer(Lorg/json/JSONObject;)Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    move-result-object v1

    iput-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->notificationRenderer:Lcom/playhaven/src/publishersdk/metadata/PHNotificationRenderer;

    .line 90
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->requestLayout()V

    .line 92
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/metadata/PHNotificationView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHNotificationView - updateNotificationData"

    sget-object v2, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method
