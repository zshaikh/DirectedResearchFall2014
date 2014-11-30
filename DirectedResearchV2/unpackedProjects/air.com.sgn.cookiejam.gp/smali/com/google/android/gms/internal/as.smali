.class public final Lcom/google/android/gms/internal/as;
.super Ljava/lang/Object;


# instance fields
.field private final ed:Lcom/google/android/gms/internal/bb;

.field private fA:Lcom/google/android/gms/internal/ax;

.field private final fw:Lcom/google/android/gms/internal/bz;

.field private final fx:Ljava/lang/Object;

.field private final fy:Lcom/google/android/gms/internal/au;

.field private fz:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/au;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/as;->fx:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/as;->fz:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/as;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/as;->fw:Lcom/google/android/gms/internal/bz;

    iput-object p3, p0, Lcom/google/android/gms/internal/as;->ed:Lcom/google/android/gms/internal/bb;

    iput-object p4, p0, Lcom/google/android/gms/internal/as;->fy:Lcom/google/android/gms/internal/au;

    return-void
.end method


# virtual methods
.method public a(JJ)Lcom/google/android/gms/internal/ay;
    .locals 17

    const-string v5, "Starting mediation."

    invoke-static {v5}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/as;->fy:Lcom/google/android/gms/internal/au;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gms/internal/au;->fI:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/at;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trying mediation network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v10, Lcom/google/android/gms/internal/at;->fD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ct;->t(Ljava/lang/String;)V

    iget-object v5, v10, Lcom/google/android/gms/internal/at;->fE:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/as;->fx:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/as;->fz:Z

    move v5, v0

    if-eqz v5, :cond_2

    new-instance v5, Lcom/google/android/gms/internal/ay;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ay;-><init>(I)V

    monitor-exit v16

    :goto_1
    return-object v5

    :cond_2
    new-instance v5, Lcom/google/android/gms/internal/ax;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/as;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/as;->ed:Lcom/google/android/gms/internal/bb;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/as;->fy:Lcom/google/android/gms/internal/au;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/as;->fw:Lcom/google/android/gms/internal/bz;

    move-object v11, v0

    iget-object v11, v11, Lcom/google/android/gms/internal/bz;->hr:Lcom/google/android/gms/internal/v;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/as;->fw:Lcom/google/android/gms/internal/bz;

    move-object v12, v0

    iget-object v12, v12, Lcom/google/android/gms/internal/bz;->em:Lcom/google/android/gms/internal/x;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/as;->fw:Lcom/google/android/gms/internal/bz;

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/gms/internal/bz;->ej:Lcom/google/android/gms/internal/cu;

    invoke-direct/range {v5 .. v13}, Lcom/google/android/gms/internal/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/au;Lcom/google/android/gms/internal/at;Lcom/google/android/gms/internal/v;Lcom/google/android/gms/internal/x;Lcom/google/android/gms/internal/cu;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/as;->fA:Lcom/google/android/gms/internal/ax;

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/as;->fA:Lcom/google/android/gms/internal/ax;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ax;->b(JJ)Lcom/google/android/gms/internal/ay;

    move-result-object v5

    iget v6, v5, Lcom/google/android/gms/internal/ay;->ga:I

    if-nez v6, :cond_3

    const-string v6, "Adapter succeeded."

    invoke-static {v6}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_3
    iget-object v6, v5, Lcom/google/android/gms/internal/ay;->gc:Lcom/google/android/gms/internal/bc;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/google/android/gms/internal/cs;->iI:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/as$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/as$1;-><init>(Lcom/google/android/gms/internal/as;Lcom/google/android/gms/internal/ay;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    new-instance v5, Lcom/google/android/gms/internal/ay;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ay;-><init>(I)V

    goto :goto_1
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/as;->fx:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/as;->fz:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/as;->fA:Lcom/google/android/gms/internal/ax;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/as;->fA:Lcom/google/android/gms/internal/ax;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ax;->cancel()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
