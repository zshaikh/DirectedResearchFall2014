.class Lcom/mgeek/android/ui/al;
.super Ljava/lang/Object;
.source "MultiChoicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/MultiChoicePreference;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/MultiChoicePreference;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mgeek/android/ui/al;->a:Lcom/mgeek/android/ui/MultiChoicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mgeek/android/ui/al;->a:Lcom/mgeek/android/ui/MultiChoicePreference;

    invoke-static {v0}, Lcom/mgeek/android/ui/MultiChoicePreference;->a(Lcom/mgeek/android/ui/MultiChoicePreference;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 118
    return-void
.end method
