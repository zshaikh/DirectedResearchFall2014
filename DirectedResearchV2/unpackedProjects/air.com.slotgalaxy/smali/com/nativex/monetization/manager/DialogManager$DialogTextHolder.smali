.class public Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;
.super Ljava/lang/Object;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/manager/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogTextHolder"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field final synthetic this$0:Lcom/nativex/monetization/manager/DialogManager;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nativex/monetization/manager/DialogManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 434
    iput-object p1, p0, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->this$0:Lcom/nativex/monetization/manager/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iput-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    .line 436
    iput-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 473
    if-nez p1, :cond_0

    move v2, v4

    .line 498
    :goto_0
    return v2

    .line 476
    :cond_0
    instance-of v2, p1, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;

    if-eqz v2, :cond_5

    .line 477
    move-object v0, p1

    check-cast v0, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;

    move-object v1, v0

    .line 478
    .local v1, "holder":Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;
    iget-object v2, p0, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 479
    iget-object v2, p0, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    iget-object v3, v1, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    .line 480
    goto :goto_0

    .line 483
    :cond_1
    iget-object v2, v1, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    if-eqz v2, :cond_2

    move v2, v4

    .line 484
    goto :goto_0

    .line 487
    :cond_2
    iget-object v2, p0, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 488
    iget-object v2, p0, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    iget-object v3, v1, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v4

    .line 489
    goto :goto_0

    .line 492
    :cond_3
    iget-object v2, v1, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v2, v4

    .line 493
    goto :goto_0

    .line 496
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .end local v1    # "holder":Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;
    :cond_5
    move v2, v4

    .line 498
    goto :goto_0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->body:Ljava/lang/String;

    .line 468
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/nativex/monetization/manager/DialogManager$DialogTextHolder;->title:Ljava/lang/String;

    .line 452
    return-void
.end method
