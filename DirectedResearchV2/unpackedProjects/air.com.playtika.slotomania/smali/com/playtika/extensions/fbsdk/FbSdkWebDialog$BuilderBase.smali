.class Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;
.super Ljava/lang/Object;
.source "FbSdkWebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field private static final APP_ID_PARAM:Ljava/lang/String; = "app_id"


# instance fields
.field private action:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private listener:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;

.field private parameters:Landroid/os/Bundle;

.field private session:Lcom/facebook/Session;

.field private theme:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Lcom/facebook/Session;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 423
    .local p0, "this":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;, "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase<TCONCRETE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    const v0, 0x1030010

    iput v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->theme:I

    .line 424
    const-string v0, "session"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Attempted to use a Session that was not open."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iput-object p2, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->session:Lcom/facebook/Session;

    .line 430
    invoke-direct {p0, p1, p3, p4}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 431
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 433
    .local p0, "this":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;, "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase<TCONCRETE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    const v0, 0x1030010

    iput v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->theme:I

    .line 434
    const-string v0, "applicationId"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iput-object p2, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    .line 437
    invoke-direct {p0, p1, p3, p4}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 438
    return-void
.end method

.method private finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 513
    .local p0, "this":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;, "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase<TCONCRETE;>;"
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->context:Landroid/content/Context;

    .line 514
    iput-object p2, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->action:Ljava/lang/String;

    .line 515
    if-eqz p3, :cond_0

    .line 516
    iput-object p3, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;
    .locals 6

    .prologue
    .local p0, "this":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;, "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase<TCONCRETE;>;"
    const-string v3, "redirect_uri"

    const-string v2, "app_id"

    .line 478
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->session:Lcom/facebook/Session;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->session:Lcom/facebook/Session;

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->session:Lcom/facebook/Session;

    invoke-virtual {v2}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :goto_0
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "redirect_uri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "redirect_uri"

    const-string v1, "fbconnect://success"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_0
    new-instance v0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;

    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->action:Ljava/lang/String;

    iget-object v3, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    iget v4, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->theme:I

    iget-object v5, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->listener:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;

    invoke-direct/range {v0 .. v5}, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;)V

    return-object v0

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    const-string v1, "app_id"

    iget-object v1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    .local p0, "this":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;, "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase<TCONCRETE;>;"
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 497
    .local p0, "this":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;, "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase<TCONCRETE;>;"
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected getListener()Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;
    .locals 1

    .prologue
    .line 509
    .local p0, "this":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;, "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase<TCONCRETE;>;"
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->listener:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;

    return-object v0
.end method

.method protected getParameters()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 505
    .local p0, "this":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;, "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase<TCONCRETE;>;"
    iget-object v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getTheme()I
    .locals 1

    .prologue
    .line 501
    .local p0, "this":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;, "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase<TCONCRETE;>;"
    iget v0, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->theme:I

    return v0
.end method

.method public setOnCompleteListener(Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;)Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;
    .locals 1
    .param p1, "listener"    # Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 465
    .local p0, "this":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;, "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase<TCONCRETE;>;"
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->listener:Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$OnCompleteListener;

    .line 467
    move-object v0, p0

    .line 468
    .local v0, "result":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;, "TCONCRETE;"
    return-object v0
.end method

.method public setTheme(I)Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;
    .locals 1
    .param p1, "theme"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;, "Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase<TCONCRETE;>;"
    iput p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;->theme:I

    .line 452
    move-object v0, p0

    .line 453
    .local v0, "result":Lcom/playtika/extensions/fbsdk/FbSdkWebDialog$BuilderBase;, "TCONCRETE;"
    return-object v0
.end method
