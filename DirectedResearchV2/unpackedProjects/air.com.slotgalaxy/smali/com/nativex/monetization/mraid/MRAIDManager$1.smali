.class final Lcom/nativex/monetization/mraid/MRAIDManager$1;
.super Ljava/lang/Object;
.source "MRAIDManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/mraid/MRAIDManager;->fireListener(Lcom/nativex/monetization/listeners/OnAdEvent;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$event:Lcom/nativex/monetization/enums/AdEvent;

.field final synthetic val$listener:Lcom/nativex/monetization/listeners/OnAdEvent;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/listeners/OnAdEvent;Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDManager$1;->val$listener:Lcom/nativex/monetization/listeners/OnAdEvent;

    iput-object p2, p0, Lcom/nativex/monetization/mraid/MRAIDManager$1;->val$event:Lcom/nativex/monetization/enums/AdEvent;

    iput-object p3, p0, Lcom/nativex/monetization/mraid/MRAIDManager$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDManager$1;->val$listener:Lcom/nativex/monetization/listeners/OnAdEvent;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDManager$1;->val$listener:Lcom/nativex/monetization/listeners/OnAdEvent;

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDManager$1;->val$event:Lcom/nativex/monetization/enums/AdEvent;

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDManager$1;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nativex/monetization/listeners/OnAdEvent;->onEvent(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 351
    :cond_0
    return-void
.end method
