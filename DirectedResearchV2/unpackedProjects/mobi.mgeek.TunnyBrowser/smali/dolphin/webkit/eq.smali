.class Ldolphin/webkit/eq;
.super Ljava/lang/Object;
.source "LoadListener.java"

# interfaces
.implements Ldolphin/net/http/n;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ldolphin/webkit/LoadListener;


# direct methods
.method constructor <init>(Ldolphin/webkit/LoadListener;I)V
    .locals 0

    .prologue
    .line 1217
    iput-object p1, p0, Ldolphin/webkit/eq;->b:Ldolphin/webkit/LoadListener;

    iput p2, p0, Ldolphin/webkit/eq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1219
    iget-object v0, p0, Ldolphin/webkit/eq;->b:Ldolphin/webkit/LoadListener;

    iget v1, p0, Ldolphin/webkit/eq;->a:I

    invoke-static {v0, v1, p1, p2}, Ldolphin/webkit/LoadListener;->a(Ldolphin/webkit/LoadListener;ILjava/lang/String;Ljava/lang/String;)V

    .line 1220
    return-void
.end method
