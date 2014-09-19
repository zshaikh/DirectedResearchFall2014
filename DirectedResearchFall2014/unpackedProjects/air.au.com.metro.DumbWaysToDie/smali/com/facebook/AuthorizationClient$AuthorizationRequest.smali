.class Lcom/facebook/AuthorizationClient$AuthorizationRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private applicationId:Ljava/lang/String;

.field private defaultAudience:Lcom/facebook/SessionDefaultAudience;

.field private isLegacy:Z

.field private loginBehavior:Lcom/facebook/SessionLoginBehavior;

.field private permissions:Ljava/util/List;

.field private previousAccessToken:Ljava/lang/String;

.field private requestCode:I

.field private final transient startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/SessionLoginBehavior;IZLjava/util/List;Lcom/facebook/SessionDefaultAudience;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AuthorizationClient$StartActivityDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy:Z

    iput-object p1, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    iput p2, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->requestCode:I

    iput-boolean p3, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy:Z

    iput-object p4, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->permissions:Ljava/util/List;

    iput-object p5, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    iput-object p6, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->applicationId:Ljava/lang/String;

    iput-object p7, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->previousAccessToken:Ljava/lang/String;

    iput-object p8, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    return-void
.end method


# virtual methods
.method getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method getDefaultAudience()Lcom/facebook/SessionDefaultAudience;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->defaultAudience:Lcom/facebook/SessionDefaultAudience;

    return-object v0
.end method

.method getLoginBehavior()Lcom/facebook/SessionLoginBehavior;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->loginBehavior:Lcom/facebook/SessionLoginBehavior;

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->permissions:Ljava/util/List;

    return-object v0
.end method

.method getPreviousAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->previousAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method getRequestCode()I
    .locals 1

    iget v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->requestCode:I

    return v0
.end method

.method getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    return-object v0
.end method

.method isLegacy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy:Z

    return v0
.end method

.method needsNewTokenValidation()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->previousAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setIsLegacy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy:Z

    return-void
.end method

.method setPermissions(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->permissions:Ljava/util/List;

    return-void
.end method
