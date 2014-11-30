.class public abstract Lcom/pocketchange/android/rewards/RewardsActivity;
.super Lcom/pocketchange/android/app/HardwareAcceleratedActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/rewards/RewardsActivity$a;,
        Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;,
        Lcom/pocketchange/android/rewards/RewardsActivity$WebViewClient;
    }
.end annotation


# static fields
.field public static final EXTRA_BACKGROUND_COLOR:Ljava/lang/String; = "bgColor"

.field public static final EXTRA_BACKGROUND_PATH:Ljava/lang/String; = "bgPath"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"


# instance fields
.field private final a:Z

.field private b:Ljava/lang/String;

.field private c:Landroid/app/Dialog;

.field private d:Lcom/pocketchange/android/webkit/OptimizedWebView;

.field private final e:J

.field private f:Lcom/pocketchange/android/util/PeriodicTask;

.field private g:Z

.field protected mResourceIdResolver:Lcom/pocketchange/android/content/ResourceIdentifierResolver;

.field protected mSingleton:Lcom/pocketchange/android/PCSingleton;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/pocketchange/android/rewards/RewardsActivity;-><init>(ZJ)V

    .line 79
    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 0
    .param p1, "saveViewState"    # Z
    .param p2, "webViewReloadPeriod"    # J

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;-><init>()V

    .line 82
    iput-boolean p1, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->a:Z

    .line 83
    iput-wide p2, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->e:J

    .line 84
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 381
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mResourceIdResolver:Lcom/pocketchange/android/content/ResourceIdentifierResolver;

    const-string v2, "pc_rewards_error_dialog_title"

    sget v3, Lcom/pocketchange/android/R$string;->pc_rewards_error_dialog_title:I

    invoke-interface {v1, v2, v3}, Lcom/pocketchange/android/content/ResourceIdentifierResolver;->resolveString(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/pocketchange/android/rewards/RewardsActivity$4;

    invoke-direct {v2, p0}, Lcom/pocketchange/android/rewards/RewardsActivity$4;-><init>(Lcom/pocketchange/android/rewards/RewardsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 391
    invoke-direct {p0, v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->a(Landroid/app/Dialog;)V

    .line 392
    return-void
.end method

.method private a(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->c:Landroid/app/Dialog;

    if-eq v0, p1, :cond_1

    .line 422
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 425
    :cond_0
    iput-object p1, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->c:Landroid/app/Dialog;

    .line 427
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_2

    .line 429
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 431
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 432
    return-void
.end method

.method static synthetic a(Lcom/pocketchange/android/rewards/RewardsActivity;)Z
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 133
    move v0, v5

    move-object v1, v7

    .line 134
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_8

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->createWebView()Lcom/pocketchange/android/webkit/OptimizedWebView;

    move-result-object v2

    iput-object v2, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->d:Lcom/pocketchange/android/webkit/OptimizedWebView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 156
    :goto_1
    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->d:Lcom/pocketchange/android/webkit/OptimizedWebView;

    if-nez v1, :cond_6

    .line 157
    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebView constructor returned null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mSingleton:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v1, v0, v5, v5}, Lcom/pocketchange/android/PCSingleton;->recordException(Ljava/lang/Throwable;ZZ)V

    .line 162
    instance-of v1, v0, Landroid/database/sqlite/SQLiteException;

    if-eqz v1, :cond_4

    .line 163
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mResourceIdResolver:Lcom/pocketchange/android/content/ResourceIdentifierResolver;

    const-string v1, "pc_rewards_error_dialog_webview_db_error_message"

    sget v2, Lcom/pocketchange/android/R$string;->pc_rewards_error_dialog_webview_db_error_message:I

    invoke-interface {v0, v1, v2}, Lcom/pocketchange/android/content/ResourceIdentifierResolver;->resolveString(Ljava/lang/String;I)I

    move-result v0

    .line 169
    :goto_2
    invoke-direct {p0, v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->a(I)V

    .line 182
    :goto_3
    return-void

    .line 137
    :catch_0
    move-exception v2

    .line 138
    if-nez v1, :cond_1

    move-object v1, v2

    .line 141
    :cond_1
    instance-of v3, v2, Landroid/database/sqlite/SQLiteException;

    if-eqz v3, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    new-instance v3, Lcom/pocketchange/android/rewards/RewardsActivity$a;

    invoke-direct {v3}, Lcom/pocketchange/android/rewards/RewardsActivity$a;-><init>()V

    invoke-virtual {v3, v2}, Lcom/pocketchange/android/rewards/RewardsActivity$a;->matches(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 149
    const-string v2, "webview.db"

    invoke-virtual {p0, v2}, Lcom/pocketchange/android/rewards/RewardsActivity;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "webviewCache.db"

    invoke-virtual {p0, v2}, Lcom/pocketchange/android/rewards/RewardsActivity;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 134
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 154
    goto :goto_1

    .line 164
    :cond_4
    instance-of v0, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_5

    .line 165
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mResourceIdResolver:Lcom/pocketchange/android/content/ResourceIdentifierResolver;

    const-string v1, "pc_rewards_error_dialog_insufficient_memory_error_message"

    sget v2, Lcom/pocketchange/android/R$string;->pc_rewards_error_dialog_insufficient_memory_error_message:I

    invoke-interface {v0, v1, v2}, Lcom/pocketchange/android/content/ResourceIdentifierResolver;->resolveString(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    .line 167
    :cond_5
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mResourceIdResolver:Lcom/pocketchange/android/content/ResourceIdentifierResolver;

    const-string v1, "pc_rewards_error_dialog_internal_error_message"

    sget v2, Lcom/pocketchange/android/R$string;->pc_rewards_error_dialog_internal_error_message:I

    invoke-interface {v0, v1, v2}, Lcom/pocketchange/android/content/ResourceIdentifierResolver;->resolveString(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    .line 173
    :cond_6
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 174
    instance-of v1, v0, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_7

    .line 175
    check-cast v0, Landroid/widget/FrameLayout;

    .line 180
    :goto_4
    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->d:Lcom/pocketchange/android/webkit/OptimizedWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v6, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    invoke-virtual {p0, v7}, Lcom/pocketchange/android/rewards/RewardsActivity;->loadUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 177
    :cond_7
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-virtual {p0, v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_8
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private d()V
    .locals 4

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getWebView()Lcom/pocketchange/android/webkit/OptimizedWebView;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    .line 359
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->c:Landroid/app/Dialog;

    instance-of v0, v0, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->c:Landroid/app/Dialog;

    check-cast v0, Landroid/app/ProgressDialog;

    .line 376
    :goto_0
    invoke-direct {p0, v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->a(Landroid/app/Dialog;)V

    .line 377
    return-void

    .line 365
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 366
    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mResourceIdResolver:Lcom/pocketchange/android/content/ResourceIdentifierResolver;

    const-string v2, "pc_rewards_loading"

    sget v3, Lcom/pocketchange/android/R$string;->pc_rewards_loading:I

    invoke-interface {v1, v2, v3}, Lcom/pocketchange/android/content/ResourceIdentifierResolver;->resolveString(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/pocketchange/android/rewards/RewardsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 367
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 368
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 369
    new-instance v1, Lcom/pocketchange/android/rewards/RewardsActivity$3;

    invoke-direct {v1, p0}, Lcom/pocketchange/android/rewards/RewardsActivity$3;-><init>(Lcom/pocketchange/android/rewards/RewardsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 396
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mResourceIdResolver:Lcom/pocketchange/android/content/ResourceIdentifierResolver;

    const-string v2, "pc_rewards_error_dialog_title"

    sget v3, Lcom/pocketchange/android/R$string;->pc_rewards_error_dialog_title:I

    invoke-interface {v1, v2, v3}, Lcom/pocketchange/android/content/ResourceIdentifierResolver;->resolveString(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mResourceIdResolver:Lcom/pocketchange/android/content/ResourceIdentifierResolver;

    const-string v2, "pc_rewards_error_dialog_content_error_message"

    sget v3, Lcom/pocketchange/android/R$string;->pc_rewards_error_dialog_content_error_message:I

    invoke-interface {v1, v2, v3}, Lcom/pocketchange/android/content/ResourceIdentifierResolver;->resolveString(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mResourceIdResolver:Lcom/pocketchange/android/content/ResourceIdentifierResolver;

    const-string v2, "pc_rewards_error_dialog_retry_button"

    sget v3, Lcom/pocketchange/android/R$string;->pc_rewards_error_dialog_retry_button:I

    invoke-interface {v1, v2, v3}, Lcom/pocketchange/android/content/ResourceIdentifierResolver;->resolveString(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lcom/pocketchange/android/rewards/RewardsActivity$6;

    invoke-direct {v2, p0}, Lcom/pocketchange/android/rewards/RewardsActivity$6;-><init>(Lcom/pocketchange/android/rewards/RewardsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mResourceIdResolver:Lcom/pocketchange/android/content/ResourceIdentifierResolver;

    const-string v2, "pc_rewards_error_dialog_cancel_button"

    sget v3, Lcom/pocketchange/android/R$string;->pc_rewards_error_dialog_cancel_button:I

    invoke-interface {v1, v2, v3}, Lcom/pocketchange/android/content/ResourceIdentifierResolver;->resolveString(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lcom/pocketchange/android/rewards/RewardsActivity$5;

    invoke-direct {v2, p0}, Lcom/pocketchange/android/rewards/RewardsActivity$5;-><init>(Lcom/pocketchange/android/rewards/RewardsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 416
    invoke-direct {p0, v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->a(Landroid/app/Dialog;)V

    .line 417
    return-void
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->c:Landroid/app/Dialog;

    .line 439
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->g:Z

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-direct {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->d()V

    goto :goto_0
.end method

.method protected addView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 446
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    return-void
.end method

.method protected addView(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/4 v2, -0x1

    .line 451
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 452
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getWebView()Lcom/pocketchange/android/webkit/OptimizedWebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->setVisibility(I)V

    .line 313
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->onWebViewLoadedNewPage()V

    goto :goto_0
.end method

.method protected createWebView()Lcom/pocketchange/android/webkit/OptimizedWebView;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 187
    new-instance v0, Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-direct {v0, p0}, Lcom/pocketchange/android/webkit/OptimizedWebView;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-virtual {v0, v4}, Lcom/pocketchange/android/webkit/OptimizedWebView;->setVerticalScrollBarEnabled(Z)V

    .line 189
    invoke-virtual {v0, v4}, Lcom/pocketchange/android/webkit/OptimizedWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 190
    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mSingleton:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v1}, Lcom/pocketchange/android/PCSingleton;->getConfiguration()Lcom/pocketchange/android/PCSingleton$Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pocketchange/android/PCSingleton$Configuration;->isDebugEnabled()Z

    move-result v1

    .line 191
    if-eqz v1, :cond_0

    .line 192
    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v2}, Lcom/pocketchange/android/webkit/OptimizedWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 195
    :cond_0
    new-instance v2, Lcom/pocketchange/android/rewards/RewardsActivity$1;

    invoke-direct {v2, p0}, Lcom/pocketchange/android/rewards/RewardsActivity$1;-><init>(Lcom/pocketchange/android/rewards/RewardsActivity;)V

    invoke-virtual {v0, v2}, Lcom/pocketchange/android/webkit/OptimizedWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    new-instance v2, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewClient;

    new-instance v3, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;

    invoke-direct {v3, p0, v0}, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewInterface;-><init>(Lcom/pocketchange/android/rewards/RewardsActivity;Lcom/pocketchange/android/webkit/OptimizedWebView;)V

    invoke-direct {v2, p0, v3, v1}, Lcom/pocketchange/android/rewards/RewardsActivity$WebViewClient;-><init>(Lcom/pocketchange/android/rewards/RewardsActivity;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Lcom/pocketchange/android/webkit/OptimizedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 202
    invoke-virtual {v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 204
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 205
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 206
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 207
    return-object v0
.end method

.method protected final getContentView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 455
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method protected getInitialUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 471
    const-string v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getWebView()Lcom/pocketchange/android/webkit/OptimizedWebView;

    move-result-object v0

    .line 292
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getWebView()Lcom/pocketchange/android/webkit/OptimizedWebView;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->d:Lcom/pocketchange/android/webkit/OptimizedWebView;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method protected handleOnCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const-string v5, "bgColor"

    .line 88
    invoke-super {p0, p1}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->handleOnCreate(Landroid/os/Bundle;)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->b:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/pocketchange/android/PocketChange;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string v0, "PCSingletonState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 93
    invoke-static {p0, v0}, Lcom/pocketchange/android/PCSingleton;->initialize(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 96
    :cond_0
    invoke-static {}, Lcom/pocketchange/android/PCSingleton;->getInstance()Lcom/pocketchange/android/PCSingleton;

    move-result-object v0

    iput-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mSingleton:Lcom/pocketchange/android/PCSingleton;

    .line 97
    invoke-static {p0}, Lcom/pocketchange/android/content/ResourceIdentifierResolverFactory;->getResolver(Landroid/content/Context;)Lcom/pocketchange/android/content/ResourceIdentifierResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mResourceIdResolver:Lcom/pocketchange/android/content/ResourceIdentifierResolver;

    .line 98
    const/4 v0, 0x1

    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 101
    const-string v3, "bgPath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    if-nez v3, :cond_3

    .line 103
    const-string v3, "bgColor"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 105
    const-string v1, "bgColor"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    move v1, v4

    .line 121
    :goto_0
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0, v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->addView(Landroid/view/View;)V

    .line 124
    :cond_1
    if-eqz v1, :cond_2

    .line 125
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 126
    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->addView(Landroid/view/View;)V

    .line 129
    :cond_2
    invoke-direct {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->c()V

    .line 130
    return-void

    .line 109
    :cond_3
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 110
    if-eqz v2, :cond_4

    .line 111
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 112
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 113
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 114
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v4, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 116
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_0

    :cond_4
    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_0
.end method

.method protected loadInitialUrl()V
    .locals 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getWebView()Lcom/pocketchange/android/webkit/OptimizedWebView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getInitialUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->loadUrl(Ljava/lang/String;)V

    .line 258
    return-void
.end method

.method protected final loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->d()V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->g:Z

    .line 268
    if-nez p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->b:Ljava/lang/String;

    .line 271
    :cond_0
    if-nez p1, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->loadInitialUrl()V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getWebView()Lcom/pocketchange/android/webkit/OptimizedWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final notifyWebViewError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->g:Z

    .line 319
    const-string v0, "RewardsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received notification of WebView error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->e()V

    .line 323
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->onDestroy()V

    .line 242
    invoke-direct {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->f()Z

    .line 243
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->d:Lcom/pocketchange/android/webkit/OptimizedWebView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->d:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-static {v0}, Lcom/pocketchange/android/view/ViewUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 245
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->d:Lcom/pocketchange/android/webkit/OptimizedWebView;

    invoke-virtual {v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->destroy()V

    .line 247
    :cond_0
    return-void
.end method

.method protected onHardwareAccelerationStateChangeRequested(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->onHardwareAccelerationStateChangeRequested(Z)V

    .line 252
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mSingleton:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v0, p1}, Lcom/pocketchange/android/PCSingleton;->setWebViewHardwareAccelerationEnabled(Z)V

    .line 253
    return-void
.end method

.method protected onLoadingCancelled()V
    .locals 0

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->finish()V

    .line 328
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->onResume()V

    .line 213
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getWebView()Lcom/pocketchange/android/webkit/OptimizedWebView;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->f:Lcom/pocketchange/android/util/PeriodicTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->f:Lcom/pocketchange/android/util/PeriodicTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/util/PeriodicTask;->runIfDue(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->onWebViewResumed()V

    .line 219
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/pocketchange/android/app/HardwareAcceleratedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 226
    iget-boolean v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->a:Z

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 229
    :cond_0
    const-string v0, "PCSingletonState"

    iget-object v1, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->mSingleton:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v1}, Lcom/pocketchange/android/PCSingleton;->saveState()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 231
    if-nez v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->b:Ljava/lang/String;

    .line 234
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/pocketchange/android/net/URIUtils;->isHttpUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_2
    return-void
.end method

.method protected onWebViewLoadedNewPage()V
    .locals 6

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/pocketchange/android/net/URIUtils;->isHttpUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->f:Lcom/pocketchange/android/util/PeriodicTask;

    .line 348
    :cond_1
    :goto_0
    return-void

    .line 337
    :cond_2
    new-instance v0, Lcom/pocketchange/android/util/PeriodicTask;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView Reloader ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pocketchange/android/rewards/RewardsActivity$2;

    invoke-direct {v2, p0}, Lcom/pocketchange/android/rewards/RewardsActivity$2;-><init>(Lcom/pocketchange/android/rewards/RewardsActivity;)V

    new-instance v3, Lcom/pocketchange/android/util/PeriodicTask$SystemBootClock;

    invoke-direct {v3}, Lcom/pocketchange/android/util/PeriodicTask$SystemBootClock;-><init>()V

    iget-wide v4, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->e:J

    invoke-direct/range {v0 .. v5}, Lcom/pocketchange/android/util/PeriodicTask;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Lcom/pocketchange/android/util/PeriodicTask$Clock;J)V

    iput-object v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->f:Lcom/pocketchange/android/util/PeriodicTask;

    goto :goto_0
.end method

.method protected onWebViewResumed()V
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getWebView()Lcom/pocketchange/android/webkit/OptimizedWebView;

    move-result-object v0

    const-string v1, "javascript: PC.trigger(\'reset\')"

    invoke-virtual {v0, v1}, Lcom/pocketchange/android/webkit/OptimizedWebView;->loadUrl(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method protected postIfNotDestroyed(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "toRun"    # Ljava/lang/Runnable;

    .prologue
    .line 459
    new-instance v0, Lcom/pocketchange/android/rewards/RewardsActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/pocketchange/android/rewards/RewardsActivity$7;-><init>(Lcom/pocketchange/android/rewards/RewardsActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/rewards/RewardsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 467
    return-void
.end method

.method protected final reloadWebView()V
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/pocketchange/android/rewards/RewardsActivity;->getWebView()Lcom/pocketchange/android/webkit/OptimizedWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pocketchange/android/webkit/OptimizedWebView;->reload()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pocketchange/android/rewards/RewardsActivity;->g:Z

    .line 282
    return-void
.end method
