.class public Lcom/g/a/g;
.super Ljava/lang/Object;
.source "AnimatorSet.java"


# instance fields
.field final synthetic a:Lcom/g/a/d;

.field private b:Lcom/g/a/j;


# direct methods
.method constructor <init>(Lcom/g/a/d;Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/g/a/g;->a:Lcom/g/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1028
    invoke-static {p1}, Lcom/g/a/d;->b(Lcom/g/a/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/g/a/j;

    iput-object v0, p0, Lcom/g/a/g;->b:Lcom/g/a/j;

    .line 1029
    iget-object v0, p0, Lcom/g/a/g;->b:Lcom/g/a/j;

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Lcom/g/a/j;

    invoke-direct {v0, p2}, Lcom/g/a/j;-><init>(Lcom/g/a/a;)V

    iput-object v0, p0, Lcom/g/a/g;->b:Lcom/g/a/j;

    .line 1031
    invoke-static {p1}, Lcom/g/a/d;->b(Lcom/g/a/d;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/g/a/g;->b:Lcom/g/a/j;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    invoke-static {p1}, Lcom/g/a/d;->d(Lcom/g/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/g/a/g;->b:Lcom/g/a/j;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/a;)Lcom/g/a/g;
    .locals 4

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/g/a/g;->a:Lcom/g/a/d;

    invoke-static {v0}, Lcom/g/a/d;->b(Lcom/g/a/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/g/a/j;

    .line 1045
    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Lcom/g/a/j;

    invoke-direct {v0, p1}, Lcom/g/a/j;-><init>(Lcom/g/a/a;)V

    .line 1047
    iget-object v1, p0, Lcom/g/a/g;->a:Lcom/g/a/d;

    invoke-static {v1}, Lcom/g/a/d;->b(Lcom/g/a/d;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    iget-object v1, p0, Lcom/g/a/g;->a:Lcom/g/a/d;

    invoke-static {v1}, Lcom/g/a/d;->d(Lcom/g/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_0
    new-instance v1, Lcom/g/a/h;

    iget-object v2, p0, Lcom/g/a/g;->b:Lcom/g/a/j;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/g/a/h;-><init>(Lcom/g/a/j;I)V

    .line 1051
    invoke-virtual {v0, v1}, Lcom/g/a/j;->a(Lcom/g/a/h;)V

    .line 1052
    return-object p0
.end method

.method public b(Lcom/g/a/a;)Lcom/g/a/g;
    .locals 3

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/g/a/g;->a:Lcom/g/a/d;

    invoke-static {v0}, Lcom/g/a/d;->b(Lcom/g/a/d;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/g/a/j;

    .line 1085
    if-nez v0, :cond_0

    .line 1086
    new-instance v0, Lcom/g/a/j;

    invoke-direct {v0, p1}, Lcom/g/a/j;-><init>(Lcom/g/a/a;)V

    .line 1087
    iget-object v1, p0, Lcom/g/a/g;->a:Lcom/g/a/d;

    invoke-static {v1}, Lcom/g/a/d;->b(Lcom/g/a/d;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    iget-object v1, p0, Lcom/g/a/g;->a:Lcom/g/a/d;

    invoke-static {v1}, Lcom/g/a/d;->d(Lcom/g/a/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    :cond_0
    new-instance v1, Lcom/g/a/h;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/g/a/h;-><init>(Lcom/g/a/j;I)V

    .line 1091
    iget-object v0, p0, Lcom/g/a/g;->b:Lcom/g/a/j;

    invoke-virtual {v0, v1}, Lcom/g/a/j;->a(Lcom/g/a/h;)V

    .line 1092
    return-object p0
.end method
