.class final Lc/m/x/a/gv/y;
.super Lc/m/x/a/gv/w;


# static fields
.field static a:Z


# instance fields
.field final b:Lc/m/x/a/gv/ak;

.field final c:Lc/m/x/a/gv/ak;

.field final d:Ljava/lang/String;

.field e:Lc/m/x/a/gv/j;

.field f:Z

.field g:Z

.field h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lc/m/x/a/gv/y;->a:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lc/m/x/a/gv/j;Z)V
    .locals 1

    invoke-direct {p0}, Lc/m/x/a/gv/w;-><init>()V

    new-instance v0, Lc/m/x/a/gv/ak;

    invoke-direct {v0}, Lc/m/x/a/gv/ak;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    new-instance v0, Lc/m/x/a/gv/ak;

    invoke-direct {v0}, Lc/m/x/a/gv/ak;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/y;->c:Lc/m/x/a/gv/ak;

    iput-object p1, p0, Lc/m/x/a/gv/y;->d:Ljava/lang/String;

    iput-object p2, p0, Lc/m/x/a/gv/y;->e:Lc/m/x/a/gv/j;

    iput-boolean p3, p0, Lc/m/x/a/gv/y;->f:Z

    return-void
.end method

.method private b(Lc/m/x/a/gv/x;)Lc/m/x/a/gv/z;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lc/m/x/a/gv/y;->h:Z

    new-instance v0, Lc/m/x/a/gv/z;

    invoke-direct {v0, p0, p1}, Lc/m/x/a/gv/z;-><init>(Lc/m/x/a/gv/y;Lc/m/x/a/gv/x;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lc/m/x/a/gv/x;->onCreateLoader(ILandroid/os/Bundle;)Lc/m/x/a/gv/ac;

    move-result-object v1

    iput-object v1, v0, Lc/m/x/a/gv/z;->d:Lc/m/x/a/gv/ac;

    invoke-virtual {p0, v0}, Lc/m/x/a/gv/y;->a(Lc/m/x/a/gv/z;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Lc/m/x/a/gv/y;->h:Z

    return-object v0

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lc/m/x/a/gv/y;->h:Z

    throw v0
.end method


# virtual methods
.method public final a(Lc/m/x/a/gv/x;)Lc/m/x/a/gv/ac;
    .locals 4

    const-string v3, "LoaderManager"

    iget-boolean v0, p0, Lc/m/x/a/gv/y;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/ak;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/z;

    sget-boolean v1, Lc/m/x/a/gv/y;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initLoader in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lc/m/x/a/gv/y;->b(Lc/m/x/a/gv/x;)Lc/m/x/a/gv/z;

    move-result-object v0

    sget-boolean v1, Lc/m/x/a/gv/y;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Created new loader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-boolean v1, v0, Lc/m/x/a/gv/z;->e:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lc/m/x/a/gv/y;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lc/m/x/a/gv/z;->d:Lc/m/x/a/gv/ac;

    iget-object v2, v0, Lc/m/x/a/gv/z;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lc/m/x/a/gv/z;->b(Lc/m/x/a/gv/ac;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, v0, Lc/m/x/a/gv/z;->d:Lc/m/x/a/gv/ac;

    return-object v0

    :cond_4
    sget-boolean v1, Lc/m/x/a/gv/y;->a:Z

    if-eqz v1, :cond_5

    const-string v1, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Re-using existing loader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-object p1, v0, Lc/m/x/a/gv/z;->c:Lc/m/x/a/gv/x;

    goto :goto_0
.end method

.method final a(Lc/m/x/a/gv/j;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/y;->e:Lc/m/x/a/gv/j;

    return-void
.end method

.method final a(Lc/m/x/a/gv/z;)V
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    iget v1, p1, Lc/m/x/a/gv/z;->a:I

    invoke-virtual {v0, v1, p1}, Lc/m/x/a/gv/ak;->a(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/y;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc/m/x/a/gv/z;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    const-string v7, ": "

    const-string v6, "  #"

    const-string v5, "    "

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0}, Lc/m/x/a/gv/ak;->a()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v4

    :goto_0
    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0}, Lc/m/x/a/gv/ak;->a()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0, v2}, Lc/m/x/a/gv/ak;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/z;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v3, v2}, Lc/m/x/a/gv/ak;->c(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/m/x/a/gv/z;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lc/m/x/a/gv/z;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/y;->c:Lc/m/x/a/gv/ak;

    invoke-virtual {v0}, Lc/m/x/a/gv/ak;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v4

    :goto_1
    iget-object v0, p0, Lc/m/x/a/gv/y;->c:Lc/m/x/a/gv/ak;

    invoke-virtual {v0}, Lc/m/x/a/gv/ak;->a()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/y;->c:Lc/m/x/a/gv/ak;

    invoke-virtual {v0, v2}, Lc/m/x/a/gv/ak;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/z;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lc/m/x/a/gv/y;->c:Lc/m/x/a/gv/ak;

    invoke-virtual {v3, v2}, Lc/m/x/a/gv/ak;->c(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/m/x/a/gv/z;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lc/m/x/a/gv/z;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0}, Lc/m/x/a/gv/ak;->a()I

    move-result v1

    move v2, v5

    move v3, v5

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0, v2}, Lc/m/x/a/gv/ak;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/z;

    iget-boolean v4, v0, Lc/m/x/a/gv/z;->h:Z

    if-eqz v4, :cond_0

    iget-boolean v0, v0, Lc/m/x/a/gv/z;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_1

    :cond_1
    return v3
.end method

.method final b()V
    .locals 4

    const/4 v2, 0x1

    const-string v3, "LoaderManager"

    sget-boolean v0, Lc/m/x/a/gv/y;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lc/m/x/a/gv/y;->f:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Called doStart when already started: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void

    :cond_2
    iput-boolean v2, p0, Lc/m/x/a/gv/y;->f:Z

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0}, Lc/m/x/a/gv/ak;->a()I

    move-result v0

    sub-int/2addr v0, v2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/ak;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/z;

    invoke-virtual {v0}, Lc/m/x/a/gv/z;->a()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method final c()V
    .locals 4

    const-string v3, "LoaderManager"

    sget-boolean v0, Lc/m/x/a/gv/y;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stopping in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lc/m/x/a/gv/y;->f:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Called doStop when not started: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0}, Lc/m/x/a/gv/ak;->a()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/ak;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/z;

    invoke-virtual {v0}, Lc/m/x/a/gv/z;->b()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/y;->f:Z

    goto :goto_0
.end method

.method final d()V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "LoaderManager"

    sget-boolean v0, Lc/m/x/a/gv/y;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Retaining in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lc/m/x/a/gv/y;->f:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Called doRetain when not started: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void

    :cond_2
    iput-boolean v4, p0, Lc/m/x/a/gv/y;->g:Z

    iput-boolean v6, p0, Lc/m/x/a/gv/y;->f:Z

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0}, Lc/m/x/a/gv/ak;->a()I

    move-result v0

    sub-int/2addr v0, v4

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/ak;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/z;

    sget-boolean v2, Lc/m/x/a/gv/y;->a:Z

    if-eqz v2, :cond_3

    const-string v2, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Retaining: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v4, v0, Lc/m/x/a/gv/z;->i:Z

    iget-boolean v2, v0, Lc/m/x/a/gv/z;->h:Z

    iput-boolean v2, v0, Lc/m/x/a/gv/z;->j:Z

    iput-boolean v6, v0, Lc/m/x/a/gv/z;->h:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lc/m/x/a/gv/z;->c:Lc/m/x/a/gv/x;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method final e()V
    .locals 6

    const/4 v4, 0x0

    const-string v5, "LoaderManager"

    iget-boolean v0, p0, Lc/m/x/a/gv/y;->g:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lc/m/x/a/gv/y;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finished Retaining in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v4, p0, Lc/m/x/a/gv/y;->g:Z

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0}, Lc/m/x/a/gv/ak;->a()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_4

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/ak;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/z;

    iget-boolean v2, v0, Lc/m/x/a/gv/z;->i:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lc/m/x/a/gv/y;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Finished Retaining: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v4, v0, Lc/m/x/a/gv/z;->i:Z

    iget-boolean v2, v0, Lc/m/x/a/gv/z;->h:Z

    iget-boolean v3, v0, Lc/m/x/a/gv/z;->j:Z

    if-eq v2, v3, :cond_2

    iget-boolean v2, v0, Lc/m/x/a/gv/z;->h:Z

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lc/m/x/a/gv/z;->b()V

    :cond_2
    iget-boolean v2, v0, Lc/m/x/a/gv/z;->h:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lc/m/x/a/gv/z;->e:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lc/m/x/a/gv/z;->k:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lc/m/x/a/gv/z;->d:Lc/m/x/a/gv/ac;

    iget-object v3, v0, Lc/m/x/a/gv/z;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lc/m/x/a/gv/z;->b(Lc/m/x/a/gv/ac;Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method final f()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0}, Lc/m/x/a/gv/ak;->a()I

    move-result v0

    sub-int/2addr v0, v2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/ak;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/z;

    iput-boolean v2, v0, Lc/m/x/a/gv/z;->k:Z

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method final g()V
    .locals 4

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0}, Lc/m/x/a/gv/ak;->a()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/ak;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/z;

    iget-boolean v2, v0, Lc/m/x/a/gv/z;->h:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lc/m/x/a/gv/z;->k:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lc/m/x/a/gv/z;->k:Z

    iget-boolean v2, v0, Lc/m/x/a/gv/z;->e:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lc/m/x/a/gv/z;->d:Lc/m/x/a/gv/ac;

    iget-object v3, v0, Lc/m/x/a/gv/z;->g:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lc/m/x/a/gv/z;->b(Lc/m/x/a/gv/ac;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final h()V
    .locals 4

    const/4 v2, 0x1

    const-string v3, "LoaderManager"

    iget-boolean v0, p0, Lc/m/x/a/gv/y;->g:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lc/m/x/a/gv/y;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destroying Active in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0}, Lc/m/x/a/gv/ak;->a()I

    move-result v0

    sub-int/2addr v0, v2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/y;->b:Lc/m/x/a/gv/ak;

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/ak;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/z;

    invoke-virtual {v0}, Lc/m/x/a/gv/z;->c()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-boolean v0, Lc/m/x/a/gv/y;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "LoaderManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destroying Inactive in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/y;->c:Lc/m/x/a/gv/ak;

    invoke-virtual {v0}, Lc/m/x/a/gv/ak;->a()I

    move-result v0

    sub-int/2addr v0, v2

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    iget-object v0, p0, Lc/m/x/a/gv/y;->c:Lc/m/x/a/gv/ak;

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/ak;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/m/x/a/gv/z;

    invoke-virtual {v0}, Lc/m/x/a/gv/z;->c()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lc/m/x/a/gv/y;->c:Lc/m/x/a/gv/ak;

    invoke-virtual {v0}, Lc/m/x/a/gv/ak;->b()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/m/x/a/gv/y;->e:Lc/m/x/a/gv/j;

    invoke-static {v1, v0}, Lc/m/x/a/gv/ai;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
