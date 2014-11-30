.class final Lc/m/x/a/gv/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/m/x/a/gv/o;


# direct methods
.method constructor <init>(Lc/m/x/a/gv/o;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/p;->a:Lc/m/x/a/gv/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/p;->a:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->c()Z

    return-void
.end method
