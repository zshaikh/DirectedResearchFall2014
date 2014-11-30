.class Lcom/dolphin/browser/search/suggestions/a;
.super Ljava/lang/Object;
.source "AbstractSearchTabContainer.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/a;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/a;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-static {v0, p2}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;Z)Z

    .line 222
    return-void
.end method
