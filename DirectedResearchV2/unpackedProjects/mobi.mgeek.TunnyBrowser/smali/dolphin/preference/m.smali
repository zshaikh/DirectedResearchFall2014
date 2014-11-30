.class Ldolphin/preference/m;
.super Ljava/lang/Object;
.source "ImportBookmarksGroupPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Ldolphin/preference/ImportBookmarksGroupPreference;


# direct methods
.method constructor <init>(Ldolphin/preference/ImportBookmarksGroupPreference;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Ldolphin/preference/m;->a:Ldolphin/preference/ImportBookmarksGroupPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Ldolphin/preference/m;->a:Ldolphin/preference/ImportBookmarksGroupPreference;

    invoke-static {v0}, Ldolphin/preference/ImportBookmarksGroupPreference;->a(Ldolphin/preference/ImportBookmarksGroupPreference;)V

    .line 93
    return-void
.end method
