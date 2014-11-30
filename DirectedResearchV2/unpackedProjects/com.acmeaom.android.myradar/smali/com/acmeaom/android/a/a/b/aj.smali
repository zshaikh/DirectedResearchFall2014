.class public Lcom/acmeaom/android/a/a/b/aj;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Lcom/acmeaom/android/a/a/b/aj;


# instance fields
.field public final b:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 4
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide/high16 v1, 0x7ff0000000000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    sput-object v0, Lcom/acmeaom/android/a/a/b/aj;->a:Lcom/acmeaom/android/a/a/b/aj;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    .line 11
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<NSTimeInterval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
