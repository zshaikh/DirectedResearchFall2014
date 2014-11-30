.class public Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;
.super Landroid/app/Activity;
.source "GoogleIABV3Activity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InApp"


# instance fields
.field alreadyStarted:Z

.field devPayLoad:Ljava/lang/String;

.field extraBundleObj:Landroid/os/Bundle;

.field mHelper:Lcom/bitrhymes/iab/util/IabHelper;

.field mSku:Ljava/lang/String;

.field method:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mSku:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->devPayLoad:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->method:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private callConfirmPurchase()V
    .locals 3

    .prologue
    const-string v2, "InApp"

    .line 176
    const-string v0, "InApp"

    const-string v0, " callConfirmPurchase "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v0, "InApp"

    const-string v0, "Creating IAB helper."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Lcom/bitrhymes/iab/util/IabHelper;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7I/JWWWx7XGinRLYR97RKWsasC9Vj3EZXKhUNa65YuIZTcoKo4tgVdq2dCYVrDsQcqRN9zyPvezuNgMxR6+ZMYvgcpy5do5dd+niQHxk9WOARogbr1qRxisklB53z9q+IZNNjWn/iZHgIksMg4kUpvy087RuRqbLLt3SVO9+1NZC6ayva2wF/oGLiCQ0WAcEkpgoONEwTk7u8j+OLrNZN73uVPgWC+pMSr0Y5F6WiauUcn2+HqTSnUr4f4/5b6p9FrHpQUE0/IAnzZNHcW64Hi9S5bnqVH0zoC8EvxF3Z8BrwUlLAh2qMZw2t62/qRs+Yu4K3C+d5QtTOwvDbGeuyQIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/bitrhymes/iab/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    .line 184
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->enableDebugLogging(Z)V

    .line 188
    const-string v0, "InApp"

    const-string v0, "Starting setup."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    new-instance v1, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;

    invoke-direct {v1, p0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$3;-><init>(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->startSetup(Lcom/bitrhymes/iab/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 256
    return-void
.end method

.method private callGetPurchaseInfo()V
    .locals 3

    .prologue
    const-string v2, "InApp"

    .line 261
    const-string v0, "InApp"

    const-string v0, " callGetPurchaseInfo "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v0, "InApp"

    const-string v0, "Creating IAB helper."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Lcom/bitrhymes/iab/util/IabHelper;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7I/JWWWx7XGinRLYR97RKWsasC9Vj3EZXKhUNa65YuIZTcoKo4tgVdq2dCYVrDsQcqRN9zyPvezuNgMxR6+ZMYvgcpy5do5dd+niQHxk9WOARogbr1qRxisklB53z9q+IZNNjWn/iZHgIksMg4kUpvy087RuRqbLLt3SVO9+1NZC6ayva2wF/oGLiCQ0WAcEkpgoONEwTk7u8j+OLrNZN73uVPgWC+pMSr0Y5F6WiauUcn2+HqTSnUr4f4/5b6p9FrHpQUE0/IAnzZNHcW64Hi9S5bnqVH0zoC8EvxF3Z8BrwUlLAh2qMZw2t62/qRs+Yu4K3C+d5QtTOwvDbGeuyQIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/bitrhymes/iab/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    .line 270
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->enableDebugLogging(Z)V

    .line 274
    const-string v0, "InApp"

    const-string v0, "Starting setup."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    new-instance v1, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4;

    invoke-direct {v1, p0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$4;-><init>(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->startSetup(Lcom/bitrhymes/iab/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 340
    return-void
.end method

.method private callIsSupported()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "InApp"

    const-string v1, " callIsSupported "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Lcom/bitrhymes/iab/util/IabHelper;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7I/JWWWx7XGinRLYR97RKWsasC9Vj3EZXKhUNa65YuIZTcoKo4tgVdq2dCYVrDsQcqRN9zyPvezuNgMxR6+ZMYvgcpy5do5dd+niQHxk9WOARogbr1qRxisklB53z9q+IZNNjWn/iZHgIksMg4kUpvy087RuRqbLLt3SVO9+1NZC6ayva2wF/oGLiCQ0WAcEkpgoONEwTk7u8j+OLrNZN73uVPgWC+pMSr0Y5F6WiauUcn2+HqTSnUr4f4/5b6p9FrHpQUE0/IAnzZNHcW64Hi9S5bnqVH0zoC8EvxF3Z8BrwUlLAh2qMZw2t62/qRs+Yu4K3C+d5QtTOwvDbGeuyQIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/bitrhymes/iab/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    .line 142
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->enableDebugLogging(Z)V

    .line 147
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    new-instance v1, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$2;

    invoke-direct {v1, p0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$2;-><init>(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->startSetup(Lcom/bitrhymes/iab/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 171
    return-void
.end method

.method private purchaeItemRequest()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "InApp"

    const-string v1, " purchaeItemRequest ."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lcom/bitrhymes/iab/util/IabHelper;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA7I/JWWWx7XGinRLYR97RKWsasC9Vj3EZXKhUNa65YuIZTcoKo4tgVdq2dCYVrDsQcqRN9zyPvezuNgMxR6+ZMYvgcpy5do5dd+niQHxk9WOARogbr1qRxisklB53z9q+IZNNjWn/iZHgIksMg4kUpvy087RuRqbLLt3SVO9+1NZC6ayva2wF/oGLiCQ0WAcEkpgoONEwTk7u8j+OLrNZN73uVPgWC+pMSr0Y5F6WiauUcn2+HqTSnUr4f4/5b6p9FrHpQUE0/IAnzZNHcW64Hi9S5bnqVH0zoC8EvxF3Z8BrwUlLAh2qMZw2t62/qRs+Yu4K3C+d5QtTOwvDbGeuyQIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/bitrhymes/iab/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    .line 59
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->enableDebugLogging(Z)V

    .line 64
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    new-instance v1, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;

    invoke-direct {v1, p0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity$1;-><init>(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V

    invoke-virtual {v0, v1}, Lcom/bitrhymes/iab/util/IabHelper;->startSetup(Lcom/bitrhymes/iab/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 129
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const-string v3, "InApp"

    const-string v2, ","

    .line 345
    const-string v0, "InApp"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bitrhymes/iab/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    const-string v0, "InApp"

    const-string v0, "onActivityResult handled by IABUtil."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {p0}, Lcom/bitrhymes/iab/functions/Utils;->setInAppActivity(Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;)V

    .line 42
    invoke-virtual {p0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->extraBundleObj:Landroid/os/Bundle;

    .line 43
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->extraBundleObj:Landroid/os/Bundle;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->method:Ljava/lang/String;

    .line 45
    const-string v0, "InApp"

    const-string v1, "Inside OnCreate function"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 378
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 380
    const-string v0, "InApp"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->alreadyStarted:Z

    .line 382
    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    invoke-virtual {v0}, Lcom/bitrhymes/iab/util/IabHelper;->dispose()V

    .line 383
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mHelper:Lcom/bitrhymes/iab/util/IabHelper;

    .line 384
    invoke-virtual {p0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->finish()V

    .line 385
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 357
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x1

    .line 361
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 365
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 367
    const-string v0, "InApp"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 388
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 390
    const-string v0, "InApp"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const-string v1, "sku"

    const-string v3, "InApp"

    .line 394
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 396
    const-string v1, "InApp"

    const-string v1, "onStart"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :try_start_0
    iget-boolean v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->alreadyStarted:Z

    if-nez v1, :cond_0

    .line 399
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->alreadyStarted:Z

    .line 400
    iget-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->method:Ljava/lang/String;

    const-string v2, "CALL_IS_SUPPORTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->callIsSupported()V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->method:Ljava/lang/String;

    const-string v2, "CALL_PURCHASE_ITEM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 403
    iget-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->extraBundleObj:Landroid/os/Bundle;

    const-string v2, "sku"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mSku:Ljava/lang/String;

    .line 404
    iget-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->extraBundleObj:Landroid/os/Bundle;

    const-string v2, "devPayload"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->devPayLoad:Ljava/lang/String;

    .line 405
    invoke-direct {p0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->purchaeItemRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "InApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStart->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->finish()V

    goto :goto_0

    .line 406
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->method:Ljava/lang/String;

    const-string v2, "CALL_CONFIRM_PURCHASE_ITEM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 407
    iget-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->extraBundleObj:Landroid/os/Bundle;

    const-string v2, "sku"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->mSku:Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->callConfirmPurchase()V

    goto :goto_0

    .line 409
    :cond_3
    iget-object v1, p0, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->method:Ljava/lang/String;

    const-string v2, "CALL_GET_PURCHASE_INFO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;->callGetPurchaseInfo()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 371
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 373
    const-string v0, "InApp"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void
.end method
