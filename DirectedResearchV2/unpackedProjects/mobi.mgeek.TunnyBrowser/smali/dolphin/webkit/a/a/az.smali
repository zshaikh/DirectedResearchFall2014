.class public Ldolphin/webkit/a/a/az;
.super Ldolphin/webkit/a/a/j;
.source "DERNull.java"


# static fields
.field public static final a:Ldolphin/webkit/a/a/az;

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ldolphin/webkit/a/a/az;

    invoke-direct {v0}, Ldolphin/webkit/a/a/az;-><init>()V

    sput-object v0, Ldolphin/webkit/a/a/az;->a:Ldolphin/webkit/a/a/az;

    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ldolphin/webkit/a/a/az;->b:[B

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ldolphin/webkit/a/a/j;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x5

    sget-object v1, Ldolphin/webkit/a/a/az;->b:[B

    invoke-virtual {p1, v0, v1}, Ldolphin/webkit/a/a/bf;->a(I[B)V

    .line 28
    return-void
.end method
