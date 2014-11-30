.class Lcom/dolphin/browser/t/t;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Lcom/dolphin/browser/core/al;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;)V
    .locals 0

    .prologue
    .line 1940
    iput-object p1, p0, Lcom/dolphin/browser/t/t;->a:Lcom/dolphin/browser/t/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(I)Lcom/dolphin/browser/core/ITab;
    .locals 2

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/dolphin/browser/t/t;->a:Lcom/dolphin/browser/t/l;

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->F()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1945
    iget-object v1, p0, Lcom/dolphin/browser/t/t;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v1}, Lcom/dolphin/browser/t/l;->h(Lcom/dolphin/browser/t/l;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/dolphin/browser/core/TabManager;->a(ILcom/dolphin/browser/core/ITab;)V

    .line 1946
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 1952
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/t;->b(I)Lcom/dolphin/browser/core/ITab;

    .line 1953
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1958
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/t;->b(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1959
    invoke-interface {v0, p2}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    .line 1960
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1965
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/t;->b(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1966
    invoke-interface {v0, p2, p3, p4}, Lcom/dolphin/browser/core/ITab;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1973
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/t;->b(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 1974
    invoke-interface/range {v0 .. v5}, Lcom/dolphin/browser/core/ITab;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    return-void
.end method

.method public a(ILjava/lang/String;[B)V
    .locals 1

    .prologue
    .line 1980
    invoke-direct {p0, p1}, Lcom/dolphin/browser/t/t;->b(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1981
    invoke-interface {v0, p2, p3}, Lcom/dolphin/browser/core/ITab;->postUrl(Ljava/lang/String;[B)V

    .line 1982
    return-void
.end method
