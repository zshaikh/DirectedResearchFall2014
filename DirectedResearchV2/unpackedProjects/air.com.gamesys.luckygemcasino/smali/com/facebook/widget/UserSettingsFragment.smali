.class public Lcom/facebook/widget/UserSettingsFragment;
.super Lcom/facebook/widget/FacebookFragment;
.source "UserSettingsFragment.java"


# static fields
.field private static final FIELDS:Ljava/lang/String; = "fields"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PICTURE:Ljava/lang/String; = "picture"

.field private static final REQUEST_FIELDS:Ljava/lang/String;


# instance fields
.field private connectedStateLabel:Landroid/widget/TextView;

.field private loginButton:Lcom/facebook/widget/LoginButton;

.field private loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

.field private sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

.field private user:Lcom/facebook/model/GraphUser;

.field private userInfoSession:Lcom/facebook/Session;

.field private userProfilePic:Landroid/graphics/drawable/Drawable;

.field private userProfilePicID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 61
    const-string v0, ","

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "picture"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/UserSettingsFragment;->REQUEST_FIELDS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/widget/FacebookFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-direct {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    .line 54
    return-void
.end method

.method static synthetic access$3(Lcom/facebook/widget/UserSettingsFragment;Lcom/facebook/model/GraphUser;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;

    return-void
.end method

.method static synthetic access$4(Lcom/facebook/widget/UserSettingsFragment;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/facebook/widget/UserSettingsFragment;->updateUI()V

    return-void
.end method

.method static synthetic access$5(Lcom/facebook/widget/UserSettingsFragment;)Lcom/facebook/widget/LoginButton;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/widget/UserSettingsFragment;)Lcom/facebook/model/GraphUser;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;

    return-object v0
.end method

.method static synthetic access$7(Lcom/facebook/widget/UserSettingsFragment;Ljava/lang/String;Lcom/facebook/internal/ImageResponse;)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/UserSettingsFragment;->processImageResponse(Ljava/lang/String;Lcom/facebook/internal/ImageResponse;)V

    return-void
.end method

.method private fetchUserInfo()V
    .locals 5

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 310
    .local v0, "currentSession":Lcom/facebook/Session;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/facebook/widget/UserSettingsFragment;->userInfoSession:Lcom/facebook/Session;

    if-eq v0, v3, :cond_0

    .line 312
    new-instance v3, Lcom/facebook/widget/UserSettingsFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/facebook/widget/UserSettingsFragment$1;-><init>(Lcom/facebook/widget/UserSettingsFragment;Lcom/facebook/Session;)V

    invoke-static {v0, v3}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v2

    .line 325
    .local v2, "request":Lcom/facebook/Request;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v3, "fields"

    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->REQUEST_FIELDS:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v2, v1}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/facebook/Request;

    const/4 v4, 0x0

    .line 328
    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    .line 329
    iput-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->userInfoSession:Lcom/facebook/Session;

    .line 334
    .end local v1    # "parameters":Landroid/os/Bundle;
    .end local v2    # "request":Lcom/facebook/Request;
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;

    goto :goto_0
.end method

.method private getImageRequest()Lcom/facebook/internal/ImageRequest;
    .locals 8

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 402
    .local v0, "request":Lcom/facebook/internal/ImageRequest;
    :try_start_0
    new-instance v1, Lcom/facebook/internal/ImageRequest$Builder;

    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 403
    iget-object v2, p0, Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;

    invoke-interface {v2}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v4

    .line 404
    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 405
    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v6, "dimen.com_facebook_usersettingsfragment_profile_picture_width"

    invoke-virtual {v2, v6}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    .line 404
    :goto_0
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 407
    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 408
    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v7, "dimen.com_facebook_usersettingsfragment_profile_picture_height"

    invoke-virtual {v2, v7}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    .line 407
    :goto_1
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 402
    invoke-static {v4, v5, v2}, Lcom/facebook/internal/ImageRequest;->getProfilePictureUrl(Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/facebook/internal/ImageRequest$Builder;-><init>(Landroid/content/Context;Ljava/net/URI;)V

    .line 411
    .local v1, "requestBuilder":Lcom/facebook/internal/ImageRequest$Builder;
    invoke-virtual {v1, p0}, Lcom/facebook/internal/ImageRequest$Builder;->setCallerTag(Ljava/lang/Object;)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object v2

    new-instance v3, Lcom/facebook/widget/UserSettingsFragment$2;

    invoke-direct {v3, p0}, Lcom/facebook/widget/UserSettingsFragment$2;-><init>(Lcom/facebook/widget/UserSettingsFragment;)V

    invoke-virtual {v2, v3}, Lcom/facebook/internal/ImageRequest$Builder;->setCallback(Lcom/facebook/internal/ImageRequest$Callback;)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object v2

    .line 417
    invoke-virtual {v2}, Lcom/facebook/internal/ImageRequest$Builder;->build()Lcom/facebook/internal/ImageRequest;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 420
    .end local v1    # "requestBuilder":Lcom/facebook/internal/ImageRequest$Builder;
    :goto_2
    return-object v0

    .line 406
    :cond_0
    const v2, 0x7f050002

    goto :goto_0

    .line 409
    :cond_1
    const v2, 0x7f050003

    goto :goto_1

    .line 418
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private processImageResponse(Ljava/lang/String;Lcom/facebook/internal/ImageResponse;)V
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/facebook/internal/ImageResponse;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 424
    if-eqz p2, :cond_0

    .line 425
    invoke-virtual {p2}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 426
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 427
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 431
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 432
    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v4, "dimen.com_facebook_usersettingsfragment_profile_picture_width"

    invoke-virtual {v2, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    .line 431
    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 434
    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 435
    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v5, "dimen.com_facebook_usersettingsfragment_profile_picture_height"

    invoke-virtual {v2, v5}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    .line 434
    :goto_1
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 428
    invoke-virtual {v1, v7, v7, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 437
    iput-object v1, p0, Lcom/facebook/widget/UserSettingsFragment;->userProfilePic:Landroid/graphics/drawable/Drawable;

    .line 438
    iput-object p1, p0, Lcom/facebook/widget/UserSettingsFragment;->userProfilePicID:Ljava/lang/String;

    .line 439
    iget-object v2, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v1, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 440
    iget-object v2, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/facebook/internal/ImageResponse;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/internal/ImageRequest;->getImageUri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 443
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void

    .line 433
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    const v2, 0x7f050002

    goto :goto_0

    .line 436
    :cond_2
    const v2, 0x7f050003

    goto :goto_1
.end method

.method private updateUI()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 397
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->isSessionOpen()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 341
    iget-object v5, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 342
    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v7, "color.com_facebook_usersettingsfragment_connected_text_color"

    invoke-virtual {v4, v7}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v4

    .line 341
    :goto_1
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 344
    iget-object v5, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    .line 345
    const/high16 v6, 0x3f800000

    .line 347
    const/high16 v7, -0x40800000

    .line 348
    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 349
    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v9, "color.com_facebook_usersettingsfragment_connected_shadow_color"

    invoke-virtual {v4, v9}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v4

    .line 348
    :goto_2
    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 344
    invoke-virtual {v5, v6, v11, v7, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 352
    iget-object v4, p0, Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;

    if-eqz v4, :cond_5

    .line 353
    invoke-direct {p0}, Lcom/facebook/widget/UserSettingsFragment;->getImageRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v1

    .line 354
    .local v1, "request":Lcom/facebook/internal/ImageRequest;
    if-eqz v1, :cond_1

    .line 355
    invoke-virtual {v1}, Lcom/facebook/internal/ImageRequest;->getImageUri()Ljava/net/URI;

    move-result-object v2

    .line 357
    .local v2, "requestUrl":Ljava/net/URI;
    iget-object v4, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 358
    iget-object v4, p0, Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;

    invoke-interface {v4}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/widget/UserSettingsFragment;->userProfilePicID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 359
    iget-object v4, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/facebook/widget/UserSettingsFragment;->userProfilePic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v10, v5, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 360
    iget-object v4, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 366
    .end local v2    # "requestUrl":Ljava/net/URI;
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;

    invoke-interface {v5}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
    .end local v1    # "request":Lcom/facebook/internal/ImageRequest;
    :cond_2
    const v4, 0x7f060003

    goto :goto_1

    .line 350
    :cond_3
    const v4, 0x7f060004

    goto :goto_2

    .line 362
    .restart local v1    # "request":Lcom/facebook/internal/ImageRequest;
    .restart local v2    # "requestUrl":Ljava/net/URI;
    :cond_4
    invoke-static {v1}, Lcom/facebook/internal/ImageDownloader;->downloadAsync(Lcom/facebook/internal/ImageRequest;)V

    goto :goto_3

    .line 368
    .end local v1    # "request":Lcom/facebook/internal/ImageRequest;
    .end local v2    # "requestUrl":Ljava/net/URI;
    :cond_5
    iget-object v5, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 369
    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v4, :cond_6

    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v7, "string.com_facebook_usersettingsfragment_logged_in"

    invoke-virtual {v4, v7}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v4

    .line 368
    :goto_4
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 372
    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v4, :cond_7

    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v6, "drawable.com_facebook_profile_default_icon"

    invoke-virtual {v4, v6}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v4

    .line 371
    :goto_5
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 377
    .local v0, "noProfilePic":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 378
    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v4, :cond_8

    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v6, "dimen.com_facebook_usersettingsfragment_profile_picture_width"

    invoke-virtual {v4, v6}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v4

    .line 377
    :goto_6
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 380
    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 381
    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v4, :cond_9

    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v7, "dimen.com_facebook_usersettingsfragment_profile_picture_height"

    invoke-virtual {v4, v7}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v4

    .line 380
    :goto_7
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 374
    invoke-virtual {v0, v12, v12, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 383
    iget-object v4, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v10, v0, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 370
    .end local v0    # "noProfilePic":Landroid/graphics/drawable/Drawable;
    :cond_6
    const v4, 0x7f070009

    goto :goto_4

    .line 373
    :cond_7
    const v4, 0x7f02001a

    goto :goto_5

    .line 379
    .restart local v0    # "noProfilePic":Landroid/graphics/drawable/Drawable;
    :cond_8
    const v4, 0x7f050002

    goto :goto_6

    .line 382
    :cond_9
    const v4, 0x7f050003

    goto :goto_7

    .line 386
    .end local v0    # "noProfilePic":Landroid/graphics/drawable/Drawable;
    :cond_a
    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 387
    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v4, :cond_b

    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v6, "color.com_facebook_usersettingsfragment_not_connected_text_color"

    invoke-virtual {v4, v6}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v4

    .line 386
    :goto_8
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 389
    .local v3, "textColor":I
    iget-object v4, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 390
    iget-object v4, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v11, v11, v11, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 391
    iget-object v5, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 392
    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v4, :cond_c

    sget-object v4, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v7, "string.com_facebook_usersettingsfragment_not_logged_in"

    invoke-virtual {v4, v7}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v4

    .line 391
    :goto_9
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v4, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v10, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 395
    iget-object v4, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 388
    .end local v3    # "textColor":I
    :cond_b
    const v4, 0x7f060005

    goto :goto_8

    .line 393
    .restart local v3    # "textColor":I
    :cond_c
    const v4, 0x7f07000a

    goto :goto_9
.end method


# virtual methods
.method public clearPermissions()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->clearPermissions()V

    .line 235
    return-void
.end method

.method public getDefaultAudience()Lcom/facebook/SessionDefaultAudience;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getDefaultAudience()Lcom/facebook/SessionDefaultAudience;

    move-result-object v0

    return-object v0
.end method

.method public getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v0

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getOnErrorListener()Lcom/facebook/widget/LoginButton$OnErrorListener;

    move-result-object v0

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->getPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionStatusCallback()Lcom/facebook/Session$StatusCallback;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method public bridge synthetic onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/widget/FacebookFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/UserSettingsFragment;->setRetainInstance(Z)V

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v3, "layout.com_facebook_usersettingsfragment"

    invoke-virtual {v2, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    .line 76
    :goto_0
    const/4 v3, 0x0

    .line 75
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "view":Landroid/view/View;
    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v3, "id.com_facebook_usersettingsfragment_login_button"

    invoke-virtual {v2, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/widget/LoginButton;

    iput-object v2, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;

    .line 79
    iget-object v2, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;

    iget-object v3, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v2, v3}, Lcom/facebook/widget/LoginButton;->setProperties(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)V

    .line 80
    iget-object v2, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v2, p0}, Lcom/facebook/widget/LoginButton;->setFragment(Landroid/support/v4/app/Fragment;)V

    .line 81
    iget-object v2, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;

    const-string v3, "fb_user_settings_vc_usage"

    invoke-virtual {v2, v3}, Lcom/facebook/widget/LoginButton;->setLoginLogoutEventName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getSession()Lcom/facebook/Session;

    move-result-object v0

    .line 84
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/Session;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v2, v0}, Lcom/facebook/widget/LoginButton;->setSession(Lcom/facebook/Session;)V

    .line 87
    :cond_0
    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v3, "id.com_facebook_usersettingsfragment_profile_name"

    invoke-virtual {v2, v3}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/facebook/widget/UserSettingsFragment;->connectedStateLabel:Landroid/widget/TextView;

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_5

    .line 92
    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/facebook/widget/UserSettingsFragment;->asContext:Lcom/gamesys/android/social/facebook/ane/FacebookContext;

    const-string v4, "color.com_facebook_blue"

    invoke-virtual {v2, v4}, Lcom/gamesys/android/social/facebook/ane/FacebookContext;->getResourceId(Ljava/lang/String;)I

    move-result v2

    :goto_3
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 96
    :goto_4
    return-object v1

    .line 76
    .end local v0    # "session":Lcom/facebook/Session;
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    const v2, 0x7f03000d

    goto :goto_0

    .line 78
    .restart local v1    # "view":Landroid/view/View;
    :cond_2
    const v2, 0x7f040017

    goto :goto_1

    .line 88
    .restart local v0    # "session":Lcom/facebook/Session;
    :cond_3
    const v2, 0x7f040016

    goto :goto_2

    .line 92
    :cond_4
    const v2, 0x7f060002

    goto :goto_3

    .line 94
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    goto :goto_4
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/widget/FacebookFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/facebook/widget/FacebookFragment;->onResume()V

    .line 111
    invoke-direct {p0}, Lcom/facebook/widget/UserSettingsFragment;->fetchUserInfo()V

    .line 112
    invoke-direct {p0}, Lcom/facebook/widget/UserSettingsFragment;->updateUI()V

    .line 113
    return-void
.end method

.method protected onSessionStateChange(Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "state"    # Lcom/facebook/SessionState;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/facebook/widget/UserSettingsFragment;->fetchUserInfo()V

    .line 296
    invoke-direct {p0}, Lcom/facebook/widget/UserSettingsFragment;->updateUI()V

    .line 298
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/Session$StatusCallback;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 301
    :cond_0
    return-void
.end method

.method public setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V
    .locals 1
    .param p1, "defaultAudience"    # Lcom/facebook/SessionDefaultAudience;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)V

    .line 141
    return-void
.end method

.method public setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V
    .locals 1
    .param p1, "loginBehavior"    # Lcom/facebook/SessionLoginBehavior;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)V

    .line 245
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V
    .locals 1
    .param p1, "onErrorListener"    # Lcom/facebook/widget/LoginButton$OnErrorListener;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setOnErrorListener(Lcom/facebook/widget/LoginButton$OnErrorListener;)V

    .line 264
    return-void
.end method

.method public setPublishPermissions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 208
    return-void
.end method

.method public varargs setPublishPermissions([Ljava/lang/String;)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setPublishPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 228
    return-void
.end method

.method public setReadPermissions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 169
    return-void
.end method

.method public varargs setReadPermissions([Ljava/lang/String;)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButtonProperties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/widget/UserSettingsFragment;->getSession()Lcom/facebook/Session;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->setReadPermissions(Ljava/util/List;Lcom/facebook/Session;)V

    .line 188
    return-void
.end method

.method public setSession(Lcom/facebook/Session;)V
    .locals 1
    .param p1, "newSession"    # Lcom/facebook/Session;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookFragment;->setSession(Lcom/facebook/Session;)V

    .line 127
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton;->setSession(Lcom/facebook/Session;)V

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/facebook/widget/UserSettingsFragment;->fetchUserInfo()V

    .line 131
    invoke-direct {p0}, Lcom/facebook/widget/UserSettingsFragment;->updateUI()V

    .line 132
    return-void
.end method

.method public setSessionStatusCallback(Lcom/facebook/Session$StatusCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/facebook/Session$StatusCallback;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/facebook/widget/UserSettingsFragment;->sessionStatusCallback:Lcom/facebook/Session$StatusCallback;

    .line 282
    return-void
.end method
