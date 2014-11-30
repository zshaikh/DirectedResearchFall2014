.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/support/v4/app/FragmentManagerImpl;

.field b:Landroid/support/v4/app/BackStackRecord$Op;

.field c:Landroid/support/v4/app/BackStackRecord$Op;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:Z

.field k:Ljava/lang/String;

.field l:Z

.field m:I

.field n:I

.field o:Ljava/lang/CharSequence;

.field p:I

.field q:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->j:Z

    .line 263
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    .line 264
    return-void
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->z:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->z:Landroid/support/v4/app/FragmentActivity;

    .line 325
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->y:Landroid/support/v4/app/FragmentManager;

    .line 327
    if-eqz p3, :cond_2

    .line 328
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->D:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->D:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->D:Ljava/lang/String;

    .line 336
    :cond_2
    if-eqz p1, :cond_4

    .line 337
    iget v0, p2, Landroid/support/v4/app/Fragment;->B:I

    if-eqz v0, :cond_3

    iget v0, p2, Landroid/support/v4/app/Fragment;->B:I

    if-eq v0, p1, :cond_3

    .line 338
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/Fragment;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_3
    iput p1, p2, Landroid/support/v4/app/Fragment;->B:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->C:I

    .line 345
    :cond_4
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 346
    iput p4, v0, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 347
    iput-object p2, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 348
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 349
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Z)I

    move-result v0

    return v0
.end method

.method a(Z)I
    .locals 3

    .prologue
    .line 499
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Z

    .line 502
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->i:Z

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/BackStackRecord;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->m:I

    .line 507
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->a(Ljava/lang/Runnable;Z)V

    .line 508
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->m:I

    return v0

    .line 505
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->m:I

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3

    .prologue
    .line 365
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->z:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment not added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->z:Landroid/support/v4/app/FragmentActivity;

    .line 370
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 371
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 372
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 373
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 375
    return-object p0
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .locals 2

    .prologue
    .line 306
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/BackStackRecord;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 307
    return-object p0
.end method

.method a(I)V
    .locals 5

    .prologue
    .line 468
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->i:Z

    if-nez v0, :cond_1

    .line 488
    :cond_0
    return-void

    .line 471
    :cond_1
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/BackStackRecord$Op;

    .line 474
    :goto_0
    if-eqz v0, :cond_0

    .line 475
    iget-object v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    iget v2, v1, Landroid/support/v4/app/Fragment;->x:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/support/v4/app/Fragment;->x:I

    .line 476
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v1, :cond_3

    const-string v1, "BackStackEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_3
    iget-object v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 479
    iget-object v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_5

    .line 480
    iget-object v2, v0, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/Fragment;

    .line 481
    iget v2, p0, Landroid/support/v4/app/Fragment;->x:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/support/v4/app/Fragment;->x:I

    .line 482
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v2, :cond_4

    const-string v2, "BackStackEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bump nesting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/support/v4/app/Fragment;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 486
    :cond_5
    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0
.end method

.method a(Landroid/support/v4/app/BackStackRecord$Op;)V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/BackStackRecord$Op;

    if-nez v0, :cond_0

    .line 294
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->c:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/BackStackRecord$Op;

    .line 300
    :goto_0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->e:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    .line 301
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->f:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    .line 302
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->d:I

    .line 303
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->c:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->b:Landroid/support/v4/app/BackStackRecord$Op;

    .line 297
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->c:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    .line 298
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->c:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 202
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->k:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->m:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 204
    const-string v0, " mCommitted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 205
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    :cond_0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->e:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->f:I

    if-eqz v0, :cond_2

    .line 212
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    const-string v0, " mExitAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    :cond_2
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->n:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 218
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->o:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 223
    :cond_4
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->p:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 224
    :cond_5
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->q:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 230
    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/BackStackRecord$Op;

    if-eqz v0, :cond_b

    .line 231
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/BackStackRecord$Op;

    .line 235
    :goto_0
    if-eqz v1, :cond_b

    .line 236
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Op #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 237
    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "cmd="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 239
    const-string v2, " fragment="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 240
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    if-nez v2, :cond_7

    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    if-eqz v2, :cond_8

    .line 241
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "enterAnim="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 242
    const-string v2, " exitAnim="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 244
    :cond_8
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    move v2, v5

    .line 245
    :goto_1
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 246
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 248
    const-string v3, "Removed: "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    :goto_2
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 250
    :cond_9
    const-string v3, "Removed:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 252
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 257
    :cond_a
    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    goto/16 :goto_0

    .line 260
    :cond_b
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Z)I

    move-result v0

    return v0
.end method

.method public b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3

    .prologue
    .line 379
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->z:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment not added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 384
    const/4 v1, 0x4

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 385
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 386
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 388
    return-object p0
.end method

.method public b(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 587
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popFromBackStack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    invoke-virtual {p0, v6}, Landroid/support/v4/app/BackStackRecord;->a(I)V

    .line 591
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->c:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v1, v0

    .line 592
    :goto_0
    if-eqz v1, :cond_2

    .line 593
    iget v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    packed-switch v0, :pswitch_data_0

    .line 631
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :pswitch_0
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 596
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->z:Landroid/support/v4/app/FragmentActivity;

    .line 597
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    invoke-static {v3}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;II)V

    .line 635
    :cond_1
    :goto_1
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->b:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v1, v0

    goto :goto_0

    .line 602
    :pswitch_1
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 603
    iput-object v7, v2, Landroid/support/v4/app/Fragment;->z:Landroid/support/v4/app/FragmentActivity;

    .line 604
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    invoke-static {v3}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;II)V

    .line 607
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    move v3, v5

    .line 608
    :goto_2
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 609
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 610
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    iput-object v4, v2, Landroid/support/v4/app/Fragment;->z:Landroid/support/v4/app/FragmentActivity;

    .line 611
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0, v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 608
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 616
    :pswitch_2
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 617
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentActivity;

    iput-object v2, v0, Landroid/support/v4/app/Fragment;->z:Landroid/support/v4/app/FragmentActivity;

    .line 618
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v5}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_1

    .line 621
    :pswitch_3
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 622
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    invoke-static {v3}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 626
    :pswitch_4
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 627
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    invoke-static {v3}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_1

    .line 638
    :cond_2
    if-eqz p1, :cond_3

    .line 639
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl;->c(I)I

    move-result v2

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(IIIZ)V

    .line 643
    :cond_3
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->m:I

    if-ltz v0, :cond_4

    .line 644
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->m:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->b(I)V

    .line 645
    iput v6, p0, Landroid/support/v4/app/BackStackRecord;->m:I

    .line 647
    :cond_4
    return-void

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .locals 3

    .prologue
    .line 392
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->z:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment not added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 397
    const/4 v1, 0x5

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 398
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 399
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 401
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->k:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 512
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->i:Z

    if-eqz v0, :cond_1

    .line 515
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->m:I

    if-gez v0, :cond_1

    .line 516
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_1
    invoke-virtual {p0, v8}, Landroid/support/v4/app/BackStackRecord;->a(I)V

    .line 522
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->b:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v1, v0

    .line 523
    :goto_0
    if-eqz v1, :cond_7

    .line 524
    iget v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    packed-switch v0, :pswitch_data_0

    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :pswitch_0
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 527
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->J:I

    .line 528
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 575
    :goto_1
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v1, v0

    goto :goto_0

    .line 531
    :pswitch_1
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 532
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    move v3, v7

    .line 533
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    .line 534
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 535
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v4, :cond_2

    const-string v4, "BackStackEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OP_REPLACE: adding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_2
    iget v4, v0, Landroid/support/v4/app/Fragment;->C:I

    iget v5, v2, Landroid/support/v4/app/Fragment;->C:I

    if-ne v4, v5, :cond_5

    .line 538
    iget-object v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    .line 539
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    .line 541
    :cond_3
    iget-object v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    iget v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->J:I

    .line 543
    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->i:Z

    if-eqz v4, :cond_4

    .line 544
    iget v4, v0, Landroid/support/v4/app/Fragment;->x:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/support/v4/app/Fragment;->x:I

    .line 545
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->a:Z

    if-eqz v4, :cond_4

    const-string v4, "BackStackEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bump nesting of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/support/v4/app/Fragment;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_4
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;II)V

    .line 533
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    .line 552
    :cond_6
    iget v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    iput v0, v2, Landroid/support/v4/app/Fragment;->J:I

    .line 553
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, v2, v7}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_1

    .line 556
    :pswitch_2
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 557
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->J:I

    .line 558
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 561
    :pswitch_3
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 562
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->J:I

    .line 563
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 566
    :pswitch_4
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 567
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->J:I

    .line 568
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->c(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_1

    .line 578
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->n:I

    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->g:I

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->h:I

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/support/v4/app/FragmentManagerImpl;->a(IIIZ)V

    .line 581
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->i:Z

    if-eqz v0, :cond_8

    .line 582
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->b(Landroid/support/v4/app/BackStackRecord;)V

    .line 584
    :cond_8
    return-void

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
