.class public Lcom/facebook/orca/ops/OrcaServiceOperation;
.super Ljava/lang/Object;
.source "OrcaServiceOperation.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/facebook/orca/server/IOrcaService;

.field private e:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

.field private f:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/facebook/orca/ops/OperationProgressIndicator;

.field private k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

.field private l:Ljava/lang/String;

.field private m:Landroid/os/Bundle;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 140
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->a:Landroid/content/Context;

    .line 141
    new-instance v0, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/ops/OrcaServiceOperation$1;)V

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->b:Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

    .line 142
    iput-object p2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->c:Landroid/os/Handler;

    .line 143
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/IOrcaService;)Lcom/facebook/orca/server/IOrcaService;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->d:Lcom/facebook/orca/server/IOrcaService;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 2

    .prologue
    .line 531
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Ljava/lang/String;

    .line 533
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->i()V

    .line 535
    const/4 v0, 0x0

    .line 536
    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->a:Landroid/content/Context;

    instance-of v1, v1, Lcom/facebook/orca/activity/OrcaActivityish;

    if-eqz v1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->a:Landroid/content/Context;

    check-cast v0, Lcom/facebook/orca/activity/OrcaActivityish;

    .line 538
    invoke-interface {v0, p1}, Lcom/facebook/orca/activity/OrcaActivityish;->a(Lcom/facebook/orca/ops/ServiceException;)Z

    move-result v0

    .line 541
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->g:Z

    if-eqz v1, :cond_1

    .line 542
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->d()V

    .line 544
    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->e:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->e:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;->a(Lcom/facebook/orca/ops/ServiceException;)V

    .line 547
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->h:Z

    if-eqz v0, :cond_3

    .line 548
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a()V

    .line 550
    :cond_3
    return-void
.end method

.method private a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->f:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->f:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;->a(Lcom/facebook/orca/server/OperationResult;)V

    .line 499
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperation;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/ops/OrcaServiceOperation;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/ops/OrcaServiceOperation;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->f()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/orca/ops/OrcaServiceOperation;Lcom/facebook/orca/server/OperationResult;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Lcom/facebook/orca/server/OperationResult;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 507
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationResult;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c(Lcom/facebook/orca/server/OperationResult;)V

    .line 512
    :goto_0
    return-void

    .line 510
    :cond_0
    new-instance v0, Lcom/facebook/orca/ops/ServiceException;

    invoke-direct {v0, p1}, Lcom/facebook/orca/ops/ServiceException;-><init>(Lcom/facebook/orca/server/OperationResult;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/ServiceException;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/orca/ops/OrcaServiceOperation;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1

    .prologue
    .line 515
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Ljava/lang/String;

    .line 517
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->i()V

    .line 519
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->g:Z

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->d()V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->e:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->e:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;->a(Lcom/facebook/orca/server/OperationResult;)V

    .line 525
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->h:Z

    if-eqz v0, :cond_2

    .line 526
    invoke-virtual {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a()V

    .line 528
    :cond_2
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 390
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->d:Lcom/facebook/orca/server/IOrcaService;

    if-eqz v0, :cond_1

    .line 393
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->f()V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Z

    if-nez v0, :cond_0

    .line 397
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->a:Landroid/content/Context;

    const-class v2, Lcom/facebook/orca/server/OrcaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->b:Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    iput-boolean v3, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Z

    goto :goto_0

    .line 401
    :cond_2
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "Bind to OrcaService failed"

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 403
    new-instance v1, Lcom/facebook/orca/ops/ServiceException;

    invoke-direct {v1, v0}, Lcom/facebook/orca/ops/ServiceException;-><init>(Lcom/facebook/orca/server/OperationResult;)V

    invoke-direct {p0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/ServiceException;)V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_4

    .line 415
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    const-string v1, "Null operation type"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    const-string v1, "Non-null operation id"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 417
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Z

    if-nez v0, :cond_3

    move v0, v3

    :goto_2
    const-string v1, "Registered for competion and haven\'t yet sent"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->d:Lcom/facebook/orca/server/IOrcaService;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->m:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/server/IOrcaService;->a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Ljava/lang/String;

    .line 422
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->g()V

    .line 423
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 415
    goto :goto_0

    :cond_2
    move v0, v2

    .line 416
    goto :goto_1

    :cond_3
    move v0, v2

    .line 417
    goto :goto_2

    .line 424
    :catch_0
    move-exception v0

    .line 425
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "OrcaService.<method> or registerCompletionHandler failed"

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 428
    new-instance v1, Lcom/facebook/orca/ops/ServiceException;

    invoke-direct {v1, v0}, Lcom/facebook/orca/ops/ServiceException;-><init>(Lcom/facebook/orca/server/OperationResult;)V

    invoke-direct {p0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/ServiceException;)V

    goto :goto_3

    .line 430
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Ljava/lang/String;

    if-eqz v0, :cond_5

    move v0, v3

    :goto_4
    const-string v1, "null operation id"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 432
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Z

    if-nez v0, :cond_0

    .line 434
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->g()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 435
    :catch_1
    move-exception v0

    .line 436
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    const-string v1, "OrcaService.registerCompletionHandler failed"

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 439
    new-instance v1, Lcom/facebook/orca/ops/ServiceException;

    invoke-direct {v1, v0}, Lcom/facebook/orca/ops/ServiceException;-><init>(Lcom/facebook/orca/server/OperationResult;)V

    invoke-direct {p0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/ServiceException;)V

    goto :goto_3

    :cond_5
    move v0, v2

    .line 431
    goto :goto_4
.end method

.method private g()V
    .locals 3

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Z

    if-eqz v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->d:Lcom/facebook/orca/server/IOrcaService;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Ljava/lang/String;

    new-instance v2, Lcom/facebook/orca/ops/OrcaServiceOperation$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$1;-><init>(Lcom/facebook/orca/ops/OrcaServiceOperation;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/orca/server/IOrcaService;->a(Ljava/lang/String;Lcom/facebook/orca/server/ICompletionHandler;)Z

    move-result v0

    .line 480
    if-eqz v0, :cond_1

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Z

    goto :goto_0

    .line 483
    :cond_1
    sget-object v0, Lcom/facebook/orca/server/ErrorCode;->ORCA_SERVICE_IPC_FAILURE:Lcom/facebook/orca/server/ErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/server/OperationResult;->a(Lcom/facebook/orca/server/ErrorCode;Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    .line 486
    new-instance v1, Lcom/facebook/orca/ops/ServiceException;

    invoke-direct {v1, v0}, Lcom/facebook/orca/ops/ServiceException;-><init>(Lcom/facebook/orca/server/OperationResult;)V

    invoke-direct {p0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Lcom/facebook/orca/ops/ServiceException;)V

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OperationProgressIndicator;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-interface {v0}, Lcom/facebook/orca/ops/OperationProgressIndicator;->a()V

    .line 556
    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OperationProgressIndicator;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OperationProgressIndicator;

    invoke-interface {v0}, Lcom/facebook/orca/ops/OperationProgressIndicator;->b()V

    .line 562
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->q:Z

    .line 150
    iget-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->b:Lcom/facebook/orca/ops/OrcaServiceOperation$OrcaServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->o:Z

    .line 154
    :cond_0
    iput-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->d:Lcom/facebook/orca/server/IOrcaService;

    .line 155
    iput-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->f:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    .line 156
    iput-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->e:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    .line 157
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->i()V

    .line 158
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 167
    const-string v0, "operationState"

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 168
    const-string v0, "type"

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "param"

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->m:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 170
    const-string v0, "operationId"

    iget-object v1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/OperationProgressIndicator;)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_1

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->i()V

    .line 291
    :cond_1
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->j:Lcom/facebook/orca/ops/OperationProgressIndicator;

    .line 292
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_3

    .line 294
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->h()V

    .line 296
    :cond_3
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;)V
    .locals 0
    .param p1    # Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 251
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->e:Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;

    .line 252
    return-void
.end method

.method public a(Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->f:Lcom/facebook/orca/ops/OrcaServiceOperation$OnProgressListener;

    .line 270
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 374
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    const-string v1, "Incorrect operation state"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->l:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v3

    :goto_1
    const-string v1, "Non-null opreation type"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v3

    :goto_2
    const-string v1, "Non-null param"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 378
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 379
    iput-object p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->l:Ljava/lang/String;

    .line 380
    iput-object p2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->m:Landroid/os/Bundle;

    .line 381
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->h()V

    .line 382
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->e()V

    .line 383
    return-void

    :cond_0
    move v0, v2

    .line 374
    goto :goto_0

    :cond_1
    move v0, v2

    .line 375
    goto :goto_1

    :cond_2
    move v0, v2

    .line 376
    goto :goto_2
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->g:Z

    .line 314
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 179
    const-string v0, "operationState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 180
    const-string v0, "param"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->m:Landroid/os/Bundle;

    .line 181
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->l:Ljava/lang/String;

    .line 182
    const-string v0, "operationId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->READY_TO_QUEUE:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_2

    .line 188
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->h()V

    .line 189
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->e()V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->OPERATION_QUEUED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_3

    .line 193
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->h()V

    .line 194
    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation;->e()V

    goto :goto_0

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->h:Z

    .line 332
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/facebook/orca/ops/OrcaServiceOperation$State;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 351
    iput-boolean p1, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->i:Z

    .line 352
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    sget-object v1, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->COMPLETED:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 359
    sget-object v0, Lcom/facebook/orca/ops/OrcaServiceOperation$State;->INIT:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    iput-object v0, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->k:Lcom/facebook/orca/ops/OrcaServiceOperation$State;

    .line 360
    iput-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->l:Ljava/lang/String;

    .line 361
    iput-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->m:Landroid/os/Bundle;

    .line 362
    iput-object v2, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->n:Ljava/lang/String;

    .line 363
    iput-boolean v3, p0, Lcom/facebook/orca/ops/OrcaServiceOperation;->p:Z

    .line 364
    return-void

    :cond_1
    move v0, v3

    .line 358
    goto :goto_0
.end method
