.class public Lorg/d/d/k;
.super Ljava/lang/Object;
.source "Verifier.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "Must provide a valid string as verifier"

    invoke-static {p1, v0}, Lorg/d/g/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lorg/d/d/k;->a:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/d/d/k;->a:Ljava/lang/String;

    return-object v0
.end method
