.class public Ldolphin/webkit/a/a/ao;
.super Ldolphin/webkit/a/a/k;
.source "DERBoolean.java"


# static fields
.field public static final a:Ldolphin/webkit/a/a/ao;

.field public static final b:Ldolphin/webkit/a/a/ao;


# instance fields
.field private final c:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ldolphin/webkit/a/a/ao;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldolphin/webkit/a/a/ao;-><init>(Z)V

    sput-object v0, Ldolphin/webkit/a/a/ao;->a:Ldolphin/webkit/a/a/ao;

    .line 13
    new-instance v0, Ldolphin/webkit/a/a/ao;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ldolphin/webkit/a/a/ao;-><init>(Z)V

    sput-object v0, Ldolphin/webkit/a/a/ao;->b:Ldolphin/webkit/a/a/ao;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ldolphin/webkit/a/a/k;-><init>()V

    .line 96
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput-byte v0, p0, Ldolphin/webkit/a/a/ao;->c:B

    .line 97
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B)Ldolphin/webkit/a/a/ao;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    sget-object v0, Ldolphin/webkit/a/a/ao;->b:Ldolphin/webkit/a/a/ao;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ldolphin/webkit/a/a/ao;->a:Ldolphin/webkit/a/a/ao;

    goto :goto_0
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 108
    new-array v0, v3, [B

    .line 110
    const/4 v1, 0x0

    iget-byte v2, p0, Ldolphin/webkit/a/a/ao;->c:B

    aput-byte v2, v0, v1

    .line 112
    invoke-virtual {p1, v3, v0}, Ldolphin/webkit/a/a/bf;->a(I[B)V

    .line 113
    return-void
.end method

.method protected a(Ldolphin/webkit/a/a/bb;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 118
    if-eqz p1, :cond_0

    instance-of v1, p1, Ldolphin/webkit/a/a/ao;

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-byte v1, p0, Ldolphin/webkit/a/a/ao;->c:B

    check-cast p1, Ldolphin/webkit/a/a/ao;

    iget-byte v2, p1, Ldolphin/webkit/a/a/ao;->c:B

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 128
    iget-byte v0, p0, Ldolphin/webkit/a/a/ao;->c:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-byte v0, p0, Ldolphin/webkit/a/a/ao;->c:B

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "FALSE"

    goto :goto_0
.end method
