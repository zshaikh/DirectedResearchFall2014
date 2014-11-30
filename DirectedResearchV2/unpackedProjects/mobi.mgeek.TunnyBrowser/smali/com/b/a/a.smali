.class public Lcom/b/a/a;
.super Ljava/lang/Object;
.source "Box.java"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/b/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/b/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/b/a/a;


# instance fields
.field private c:Ljava/lang/String;

.field private final e:Landroid/os/Handler;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const-class v0, Lcom/b/a/a/a;

    sput-object v0, Lcom/b/a/a;->a:Ljava/lang/Class;

    .line 149
    const-class v0, Lcom/b/a/a/b;

    sput-object v0, Lcom/b/a/a;->b:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a;->f:Ljava/lang/String;

    .line 173
    iput-object p1, p0, Lcom/b/a/a;->c:Ljava/lang/String;

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/b/a/a;->e:Landroid/os/Handler;

    .line 175
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/b/a/a;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/b/a/a;->d:Lcom/b/a/a;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/b/a/a;

    invoke-direct {v0, p0}, Lcom/b/a/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/b/a/a;->d:Lcom/b/a/a;

    .line 191
    :cond_0
    sget-object v0, Lcom/b/a/a;->d:Lcom/b/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/b/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/b/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/b/a/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/b/a/a;->e:Landroid/os/Handler;

    return-object v0
.end method

.method public static c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/b/a/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    sget-object v0, Lcom/b/a/a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public static d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/b/a/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    sget-object v0, Lcom/b/a/a;->a:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JLcom/b/a/c/a;)Lcom/b/a/e/d;
    .locals 8

    .prologue
    .line 485
    new-instance v0, Lcom/b/a/q;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/b/a/q;-><init>(Lcom/b/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;JLcom/b/a/c/a;)V

    .line 529
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 531
    new-instance v1, Lcom/b/a/v;

    invoke-direct {v1, p0, v0}, Lcom/b/a/v;-><init>(Lcom/b/a/a;Ljava/lang/Thread;)V

    .line 542
    return-object v1
.end method

.method public final a(Lcom/b/a/c/e;)V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/b/a/b;

    invoke-direct {v0, p0, p1}, Lcom/b/a/b;-><init>(Lcom/b/a/a;Lcom/b/a/c/e;)V

    invoke-virtual {v0}, Lcom/b/a/b;->start()V

    .line 298
    return-void
.end method

.method public final a(Ljava/lang/String;J[Ljava/lang/String;Lcom/b/a/c/c;)V
    .locals 7

    .prologue
    .line 432
    new-instance v0, Lcom/b/a/n;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/b/a/n;-><init>(Lcom/b/a/a;Ljava/lang/String;J[Ljava/lang/String;Lcom/b/a/c/c;)V

    invoke-virtual {v0}, Lcom/b/a/n;->start()V

    .line 457
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/b/a/c/b;)V
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lcom/b/a/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/a/h;-><init>(Lcom/b/a/a;Ljava/lang/String;Lcom/b/a/c/b;)V

    invoke-virtual {v0}, Lcom/b/a/h;->start()V

    .line 375
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/b/a/c/d;)V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/b/a/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/a/e;-><init>(Lcom/b/a/a;Ljava/lang/String;Lcom/b/a/c/d;)V

    invoke-virtual {v0}, Lcom/b/a/e;->start()V

    .line 337
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/b/a/c/f;)V
    .locals 1

    .prologue
    .line 388
    new-instance v0, Lcom/b/a/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/b/a/k;-><init>(Lcom/b/a/a;Ljava/lang/String;Lcom/b/a/c/f;)V

    invoke-virtual {v0}, Lcom/b/a/k;->start()V

    .line 413
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/b/a/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/b/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/b/a/a;->f:Ljava/lang/String;

    .line 204
    return-void
.end method
