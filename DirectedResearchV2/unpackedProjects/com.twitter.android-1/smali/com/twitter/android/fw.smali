.class final Lcom/twitter/android/fw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/twitter/android/AccountSettingsActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/AccountSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/fw;->a:Lcom/twitter/android/AccountSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/fw;->a:Lcom/twitter/android/AccountSettingsActivity;

    check-cast p2, Ljava/lang/String;

    iput-object p2, v0, Lcom/twitter/android/AccountSettingsActivity;->h:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method
