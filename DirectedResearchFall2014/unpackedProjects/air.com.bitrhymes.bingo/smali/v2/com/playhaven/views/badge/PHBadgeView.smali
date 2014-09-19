.class public Lv2/com/playhaven/views/badge/PHBadgeView;
.super Landroid/view/View;
.source "PHBadgeView.java"

# interfaces
.implements Lv2/com/playhaven/listeners/PHBadgeRequestListener;


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

.field private notificationRenderer:Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;

.field private placement:Ljava/lang/String;

.field public request:Lv2/com/playhaven/requests/badge/PHBadgeRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lv2/com/playhaven/views/badge/PHBadgeView;->renderMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "placement"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->placement:Ljava/lang/String;

    .line 45
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
    .line 66
    sget-object v0, Lv2/com/playhaven/views/badge/PHBadgeView;->renderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static initRenderers()V
    .locals 3

    .prologue
    .line 138
    sget-object v0, Lv2/com/playhaven/views/badge/PHBadgeView;->renderMap:Ljava/util/HashMap;

    const-string v1, "badge"

    const-class v2, Lv2/com/playhaven/views/badge/PHBadgeRenderer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public static setBadgeRenderer(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4
    .parameter "renderer"
    .parameter "type"

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 131
    .local v0, superclass:Ljava/lang/Class;
    const-class v1, Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;

    if-eq v0, v1, :cond_0

    .line 132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create a new renderer of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because it does not implement the PHNotificationRenderer interface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 134
    :cond_0
    sget-object v1, Lv2/com/playhaven/views/badge/PHBadgeView;->renderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->request:Lv2/com/playhaven/requests/badge/PHBadgeRequest;

    .line 78
    iput-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->notificationData:Lorg/json/JSONObject;

    .line 79
    return-void
.end method

.method public createBadgeRenderer(Lorg/json/JSONObject;)Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;
    .locals 7
    .parameter "data"

    .prologue
    .line 105
    sget-object v5, Lv2/com/playhaven/views/badge/PHBadgeView;->renderMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lv2/com/playhaven/views/badge/PHBadgeView;->initRenderers()V

    .line 107
    :cond_0
    const-string v5, "type"

    const-string v6, "badge"

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, type:Ljava/lang/String;
    const/4 v3, 0x0

    .line 111
    .local v3, renderer:Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;
    :try_start_0
    sget-object v5, Lv2/com/playhaven/views/badge/PHBadgeView;->renderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 112
    .local v2, render_class:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;

    move-object v3, v0

    .line 115
    invoke-virtual {p0}, Lv2/com/playhaven/views/badge/PHBadgeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lv2/com/playhaven/views/badge/PHBadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;->loadResources(Landroid/content/Context;Landroid/content/res/Resources;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v2           #render_class:Ljava/lang/Class;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Created subclass of PHNotificationRenderer of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lv2/com/playhaven/utils/PHStringUtil;->log(Ljava/lang/String;)V

    .line 123
    return-object v3

    .line 117
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 118
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "PHBadgeView - createBadgeRenderer"

    sget-object v6, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v1, v5, v6}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    .line 119
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getNotificationData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->notificationData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getNotificationRenderer()Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->notificationRenderer:Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->placement:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lv2/com/playhaven/requests/badge/PHBadgeRequest;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->request:Lv2/com/playhaven/requests/badge/PHBadgeRequest;

    return-object v0
.end method

.method public onBadgeRequestFailed(Lv2/com/playhaven/requests/badge/PHBadgeRequest;Lv2/com/playhaven/model/PHError;)V
    .locals 1
    .parameter "request"
    .parameter "error"

    .prologue
    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->request:Lv2/com/playhaven/requests/badge/PHBadgeRequest;

    .line 188
    invoke-virtual {p0, v0}, Lv2/com/playhaven/views/badge/PHBadgeView;->updateBadgeData(Lorg/json/JSONObject;)V

    .line 189
    return-void
.end method

.method public onBadgeRequestSucceeded(Lv2/com/playhaven/requests/badge/PHBadgeRequest;Lorg/json/JSONObject;)V
    .locals 2
    .parameter "request"
    .parameter "responseData"

    .prologue
    .line 176
    const/4 v1, 0x0

    iput-object v1, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->request:Lv2/com/playhaven/requests/badge/PHBadgeRequest;

    .line 178
    const-string v1, "notification"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 180
    .local v0, notification:Lorg/json/JSONObject;
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 182
    invoke-virtual {p0, v0}, Lv2/com/playhaven/views/badge/PHBadgeView;->updateBadgeData(Lorg/json/JSONObject;)V

    .line 183
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->notificationRenderer:Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;

    if-nez v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v1, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->notificationRenderer:Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;

    invoke-virtual {p0}, Lv2/com/playhaven/views/badge/PHBadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->notificationData:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, p1, v3}, Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;->draw(Landroid/content/Context;Landroid/graphics/Canvas;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 151
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PHBadgeView - onDraw"

    sget-object v2, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 158
    :try_start_0
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 159
    .local v1, size:Landroid/graphics/Rect;
    iget-object v2, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->notificationRenderer:Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->notificationRenderer:Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;

    invoke-virtual {p0}, Lv2/com/playhaven/views/badge/PHBadgeView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->notificationData:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4}, Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;->size(Landroid/content/Context;Lorg/json/JSONObject;)Landroid/graphics/Rect;

    move-result-object v1

    .line 162
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lv2/com/playhaven/views/badge/PHBadgeView;->setMeasuredDimension(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v1           #size:Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 164
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PHBadgeView - onDraw"

    sget-object v3, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v2, v3}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lv2/com/playhaven/requests/badge/PHBadgeRequest;

    iget-object v1, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->placement:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lv2/com/playhaven/requests/badge/PHBadgeRequest;-><init>(Lv2/com/playhaven/listeners/PHBadgeRequestListener;Ljava/lang/String;)V

    iput-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->request:Lv2/com/playhaven/requests/badge/PHBadgeRequest;

    .line 73
    iget-object v0, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->request:Lv2/com/playhaven/requests/badge/PHBadgeRequest;

    invoke-virtual {p0}, Lv2/com/playhaven/views/badge/PHBadgeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->send(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public updateBadgeData(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 86
    :cond_0
    :try_start_0
    iput-object p1, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->notificationData:Lorg/json/JSONObject;

    .line 89
    invoke-virtual {p0, p1}, Lv2/com/playhaven/views/badge/PHBadgeView;->createBadgeRenderer(Lorg/json/JSONObject;)Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;

    move-result-object v1

    iput-object v1, p0, Lv2/com/playhaven/views/badge/PHBadgeView;->notificationRenderer:Lv2/com/playhaven/views/badge/AbstractBadgeRenderer;

    .line 92
    invoke-virtual {p0}, Lv2/com/playhaven/views/badge/PHBadgeView;->requestLayout()V

    .line 94
    invoke-virtual {p0}, Lv2/com/playhaven/views/badge/PHBadgeView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 96
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PHBadgeView - updateBadgeData"

    sget-object v2, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method
