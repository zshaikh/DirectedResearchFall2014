.class public Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;
.super Ljava/lang/Object;
.source "BaseAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/communication/BaseAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostProgressHolder"
.end annotation


# instance fields
.field request:Lcom/nativex/common/Request;

.field response:Lcom/nativex/common/Response;

.field success:Z

.field final synthetic this$0:Lcom/nativex/monetization/communication/BaseAsyncTask;


# direct methods
.method public constructor <init>(Lcom/nativex/monetization/communication/BaseAsyncTask;)V
    .locals 1

    .prologue
    .line 192
    iput-object p1, p0, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->this$0:Lcom/nativex/monetization/communication/BaseAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/monetization/communication/BaseAsyncTask$PostProgressHolder;->success:Z

    return-void
.end method
