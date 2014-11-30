.class Ldolphin/webkit/aw;
.super Ljava/lang/Object;
.source "CallbackProxy.java"


# instance fields
.field private a:Ldolphin/webkit/av;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldolphin/webkit/av;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1874
    iput-object p1, p0, Ldolphin/webkit/aw;->a:Ldolphin/webkit/av;

    .line 1875
    iput-object p2, p0, Ldolphin/webkit/aw;->b:Ljava/lang/String;

    .line 1876
    iput-object p3, p0, Ldolphin/webkit/aw;->c:Ljava/lang/String;

    .line 1877
    return-void
.end method


# virtual methods
.method public a()Ldolphin/webkit/av;
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Ldolphin/webkit/aw;->a:Ldolphin/webkit/av;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1884
    iget-object v0, p0, Ldolphin/webkit/aw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1888
    iget-object v0, p0, Ldolphin/webkit/aw;->c:Ljava/lang/String;

    return-object v0
.end method
