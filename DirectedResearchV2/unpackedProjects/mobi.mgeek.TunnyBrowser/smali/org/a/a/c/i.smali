.class public interface abstract Lorg/a/a/c/i;
.super Ljava/lang/Object;
.source "X509ObjectIdentifiers.java"


# static fields
.field public static final a:Lorg/a/a/m;

.field public static final b:Lorg/a/a/m;

.field public static final c:Lorg/a/a/m;

.field public static final d:Lorg/a/a/m;

.field public static final e:Lorg/a/a/m;

.field public static final f:Lorg/a/a/m;

.field public static final g:Lorg/a/a/m;

.field public static final h:Lorg/a/a/m;

.field public static final i:Lorg/a/a/m;

.field public static final j:Lorg/a/a/m;

.field public static final k:Lorg/a/a/m;

.field public static final l:Lorg/a/a/m;

.field public static final m:Lorg/a/a/m;

.field public static final n:Lorg/a/a/m;

.field public static final o:Lorg/a/a/m;

.field public static final p:Lorg/a/a/m;

.field public static final q:Lorg/a/a/m;

.field public static final r:Lorg/a/a/m;

.field public static final s:Lorg/a/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lorg/a/a/m;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->a:Lorg/a/a/m;

    .line 13
    new-instance v0, Lorg/a/a/m;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->b:Lorg/a/a/m;

    .line 14
    new-instance v0, Lorg/a/a/m;

    const-string v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->c:Lorg/a/a/m;

    .line 15
    new-instance v0, Lorg/a/a/m;

    const-string v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->d:Lorg/a/a/m;

    .line 16
    new-instance v0, Lorg/a/a/m;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->e:Lorg/a/a/m;

    .line 17
    new-instance v0, Lorg/a/a/m;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->f:Lorg/a/a/m;

    .line 19
    new-instance v0, Lorg/a/a/m;

    const-string v1, "2.5.4.20"

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->g:Lorg/a/a/m;

    .line 20
    new-instance v0, Lorg/a/a/m;

    const-string v1, "2.5.4.41"

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->h:Lorg/a/a/m;

    .line 24
    new-instance v0, Lorg/a/a/m;

    const-string v1, "1.3.14.3.2.26"

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->i:Lorg/a/a/m;

    .line 30
    new-instance v0, Lorg/a/a/m;

    const-string v1, "1.3.36.3.2.1"

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->j:Lorg/a/a/m;

    .line 36
    new-instance v0, Lorg/a/a/m;

    const-string v1, "1.3.36.3.3.1.2"

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->k:Lorg/a/a/m;

    .line 39
    new-instance v0, Lorg/a/a/m;

    const-string v1, "2.5.8.1.1"

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->l:Lorg/a/a/m;

    .line 42
    new-instance v0, Lorg/a/a/m;

    const-string v1, "1.3.6.1.5.5.7"

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->m:Lorg/a/a/m;

    .line 47
    new-instance v0, Lorg/a/a/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/a/a/c/i;->m:Lorg/a/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->n:Lorg/a/a/m;

    .line 52
    new-instance v0, Lorg/a/a/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/a/a/c/i;->m:Lorg/a/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".48"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->o:Lorg/a/a/m;

    .line 53
    new-instance v0, Lorg/a/a/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/a/a/c/i;->o:Lorg/a/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->p:Lorg/a/a/m;

    .line 54
    new-instance v0, Lorg/a/a/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/a/a/c/i;->o:Lorg/a/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/c/i;->q:Lorg/a/a/m;

    .line 59
    sget-object v0, Lorg/a/a/c/i;->q:Lorg/a/a/m;

    sput-object v0, Lorg/a/a/c/i;->r:Lorg/a/a/m;

    .line 60
    sget-object v0, Lorg/a/a/c/i;->p:Lorg/a/a/m;

    sput-object v0, Lorg/a/a/c/i;->s:Lorg/a/a/m;

    return-void
.end method
