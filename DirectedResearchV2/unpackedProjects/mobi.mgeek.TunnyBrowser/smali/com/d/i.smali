.class public final Lcom/d/i;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcom/d/c;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;

.field private final e:[J

.field private final f:[Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/d/c;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/d/i;->a:Lcom/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p2, p0, Lcom/d/i;->b:Ljava/lang/String;

    .line 645
    iput-wide p3, p0, Lcom/d/i;->c:J

    .line 646
    iput-object p5, p0, Lcom/d/i;->f:[Ljava/io/File;

    .line 647
    iput-object p6, p0, Lcom/d/i;->d:[Ljava/io/InputStream;

    .line 648
    iput-object p7, p0, Lcom/d/i;->e:[J

    .line 649
    return-void
.end method

.method synthetic constructor <init>(Lcom/d/c;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLcom/d/d;)V
    .locals 0

    .prologue
    .line 636
    invoke-direct/range {p0 .. p7}, Lcom/d/i;-><init>(Lcom/d/c;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/d/i;->f:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b(I)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/d/i;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 689
    iget-object v1, p0, Lcom/d/i;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 690
    invoke-static {v3}, Lcom/d/j;->a(Ljava/io/Closeable;)V

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_0
    return-void
.end method
