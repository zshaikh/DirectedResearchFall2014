.class final Lc/m/x/a/gv/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:Lc/m/x/a/gv/ao;

.field final synthetic b:Lc/m/x/a/gv/al;


# direct methods
.method constructor <init>(Lc/m/x/a/gv/al;Lc/m/x/a/gv/ao;)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/an;->b:Lc/m/x/a/gv/al;

    iput-object p2, p0, Lc/m/x/a/gv/an;->a:Lc/m/x/a/gv/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityStateChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    aget-object v0, p3, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/an;->a:Lc/m/x/a/gv/ao;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    const-string v1, "RESTARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/an;->a:Lc/m/x/a/gv/ao;

    goto :goto_0

    :cond_2
    const-string v1, "RESUMED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lc/m/x/a/gv/an;->a:Lc/m/x/a/gv/ao;

    goto :goto_0

    :cond_3
    const-string v1, "PAUSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lc/m/x/a/gv/an;->a:Lc/m/x/a/gv/ao;

    goto :goto_0

    :cond_4
    const-string v1, "STOPPED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lc/m/x/a/gv/an;->a:Lc/m/x/a/gv/ao;

    goto :goto_0

    :cond_5
    const-string v1, "DESTROYED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/an;->a:Lc/m/x/a/gv/ao;

    goto :goto_0

    :cond_6
    const-string v1, "equals"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p3, v2

    if-nez v0, :cond_7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_7
    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method
