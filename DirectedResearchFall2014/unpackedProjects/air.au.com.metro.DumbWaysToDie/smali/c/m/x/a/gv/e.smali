.class public Lc/m/x/a/gv/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field private static final sClassMap:Ljava/util/HashMap;


# instance fields
.field mActivity:Lc/m/x/a/gv/j;

.field mAdded:Z

.field mAnimatingAway:Landroid/view/View;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Lc/m/x/a/gv/o;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Lc/m/x/a/gv/o;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mLoaderManager:Lc/m/x/a/gv/y;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mNextAnim:I

.field mParentFragment:Lc/m/x/a/gv/e;

.field mRemoving:Z

.field mRestored:Z

.field mResumed:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;

.field mState:I

.field mStateAfterAnimating:I

.field mTag:Ljava/lang/String;

.field mTarget:Lc/m/x/a/gv/e;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/m/x/a/gv/e;->sClassMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/m/x/a/gv/e;->mState:I

    iput v1, p0, Lc/m/x/a/gv/e;->mIndex:I

    iput v1, p0, Lc/m/x/a/gv/e;->mTargetIndex:I

    iput-boolean v2, p0, Lc/m/x/a/gv/e;->mMenuVisible:Z

    iput-boolean v2, p0, Lc/m/x/a/gv/e;->mUserVisibleHint:Z

    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Lc/m/x/a/gv/e;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc/m/x/a/gv/e;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lc/m/x/a/gv/e;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lc/m/x/a/gv/e;
    .locals 6

    const-string v5, "Unable to instantiate fragment "

    const-string v4, ": make sure class name exists, is public, and has an empty constructor that is public"

    :try_start_0
    sget-object v0, Lc/m/x/a/gv/e;->sClassMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lc/m/x/a/gv/e;->sClassMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/m/x/a/gv/e;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iput-object p2, p0, Lc/m/x/a/gv/e;->mArguments:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lc/m/x/a/gv/g;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lc/m/x/a/gv/g;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lc/m/x/a/gv/g;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lc/m/x/a/gv/g;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lc/m/x/a/gv/g;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lc/m/x/a/gv/g;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v3, "  "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/e;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/e;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/e;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/e;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/e;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mResumed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/e;->mParentFragment:Lc/m/x/a/gv/e;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mParentFragment:Lc/m/x/a/gv/e;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/e;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lc/m/x/a/gv/e;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lc/m/x/a/gv/e;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lc/m/x/a/gv/e;->mTarget:Lc/m/x/a/gv/e;

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mTarget:Lc/m/x/a/gv/e;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/e;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    iget v0, p0, Lc/m/x/a/gv/e;->mNextAnim:I

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/e;->mNextAnim:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v0, p0, Lc/m/x/a/gv/e;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lc/m/x/a/gv/e;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lc/m/x/a/gv/e;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lc/m/x/a/gv/e;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mAnimatingAway:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lc/m/x/a/gv/e;->mStateAfterAnimating:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    if-eqz v0, :cond_c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lc/m/x/a/gv/y;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Child "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lc/m/x/a/gv/o;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Lc/m/x/a/gv/e;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/o;->b(Ljava/lang/String;)Lc/m/x/a/gv/e;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getActivity()Lc/m/x/a/gv/j;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    return-object v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Lc/m/x/a/gv/n;
    .locals 2

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->instantiateChildFragmentManager()V

    iget v0, p0, Lc/m/x/a/gv/e;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->j()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    return-object v0

    :cond_1
    iget v0, p0, Lc/m/x/a/gv/e;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->i()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lc/m/x/a/gv/e;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->h()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lc/m/x/a/gv/e;->mState:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->g()V

    goto :goto_0
.end method

.method public final getFragmentManager()Lc/m/x/a/gv/n;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mFragmentManager:Lc/m/x/a/gv/o;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lc/m/x/a/gv/e;->mFragmentId:I

    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Lc/m/x/a/gv/w;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-boolean v3, p0, Lc/m/x/a/gv/e;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    iget-object v1, p0, Lc/m/x/a/gv/e;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lc/m/x/a/gv/e;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Lc/m/x/a/gv/j;->a(Ljava/lang/String;ZZ)Lc/m/x/a/gv/y;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    goto :goto_0
.end method

.method public final getParentFragment()Lc/m/x/a/gv/e;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mParentFragment:Lc/m/x/a/gv/e;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mRetainInstance:Z

    return v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Lc/m/x/a/gv/e;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mTarget:Lc/m/x/a/gv/e;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    iget v0, p0, Lc/m/x/a/gv/e;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lc/m/x/a/gv/e;->mIndex:I

    iput-object v2, p0, Lc/m/x/a/gv/e;->mWho:Ljava/lang/String;

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mAdded:Z

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mRemoving:Z

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mResumed:Z

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mFromLayout:Z

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mInLayout:Z

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mRestored:Z

    iput v1, p0, Lc/m/x/a/gv/e;->mBackStackNesting:I

    iput-object v2, p0, Lc/m/x/a/gv/e;->mFragmentManager:Lc/m/x/a/gv/o;

    iput-object v2, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    iput v1, p0, Lc/m/x/a/gv/e;->mFragmentId:I

    iput v1, p0, Lc/m/x/a/gv/e;->mContainerId:I

    iput-object v2, p0, Lc/m/x/a/gv/e;->mTag:Ljava/lang/String;

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mHidden:Z

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mDetached:Z

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mRetaining:Z

    iput-object v2, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mLoadersStarted:Z

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mCheckedForLoaderManager:Z

    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 3

    new-instance v0, Lc/m/x/a/gv/o;

    invoke-direct {v0}, Lc/m/x/a/gv/o;-><init>()V

    iput-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    iget-object v1, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    new-instance v2, Lc/m/x/a/gv/f;

    invoke-direct {v2, p0}, Lc/m/x/a/gv/f;-><init>(Lc/m/x/a/gv/e;)V

    invoke-virtual {v0, v1, v2, p0}, Lc/m/x/a/gv/o;->a(Lc/m/x/a/gv/j;Lc/m/x/a/gv/m;Lc/m/x/a/gv/e;)V

    return-void
.end method

.method public final isAdded()Z
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDetached()Z
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mHidden:Z

    return v0
.end method

.method final isInBackStack()Z
    .locals 1

    iget v0, p0, Lc/m/x/a/gv/e;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInLayout()Z
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mInLayout:Z

    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mResumed:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->getActivity()Lc/m/x/a/gv/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc/m/x/a/gv/j;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mCalled:Z

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    iget-object v1, p0, Lc/m/x/a/gv/e;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lc/m/x/a/gv/e;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lc/m/x/a/gv/j;->a(Ljava/lang/String;ZZ)Lc/m/x/a/gv/y;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    invoke-virtual {v0}, Lc/m/x/a/gv/y;->h()V

    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mCalled:Z

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mLoadersStarted:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mLoadersStarted:Z

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lc/m/x/a/gv/e;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    iget-object v1, p0, Lc/m/x/a/gv/e;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lc/m/x/a/gv/e;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lc/m/x/a/gv/j;->a(Ljava/lang/String;ZZ)Lc/m/x/a/gv/y;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    invoke-virtual {v0}, Lc/m/x/a/gv/y;->b()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->f()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    invoke-virtual {p0, p1}, Lc/m/x/a/gv/e;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lc/m/x/a/gv/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/m/x/a/gv/ab;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->h()V

    :cond_2
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0, p1}, Lc/m/x/a/gv/e;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/o;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mHidden:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lc/m/x/a/gv/e;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/o;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->f()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    invoke-virtual {p0, p1}, Lc/m/x/a/gv/e;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lc/m/x/a/gv/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/m/x/a/gv/ab;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_3

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->instantiateChildFragmentManager()V

    :cond_2
    iget-object v1, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lc/m/x/a/gv/o;->a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->g()V

    :cond_3
    return-void
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lc/m/x/a/gv/e;->mHidden:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lc/m/x/a/gv/e;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc/m/x/a/gv/e;->mMenuVisible:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lc/m/x/a/gv/e;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_0
    iget-object v1, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v1, p1, p2}, Lc/m/x/a/gv/o;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->f()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lc/m/x/a/gv/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method performDestroy()V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->o()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->onDestroy()V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lc/m/x/a/gv/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/m/x/a/gv/ab;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method performDestroyView()V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->n()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->onDestroyView()V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lc/m/x/a/gv/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/m/x/a/gv/ab;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    invoke-virtual {v0}, Lc/m/x/a/gv/y;->f()V

    :cond_2
    return-void
.end method

.method performLowMemory()V
    .locals 1

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->onLowMemory()V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->p()V

    :cond_0
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lc/m/x/a/gv/e;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/o;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lc/m/x/a/gv/e;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0, p1}, Lc/m/x/a/gv/o;->b(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->k()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->onPause()V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lc/m/x/a/gv/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/m/x/a/gv/ab;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lc/m/x/a/gv/e;->mHidden:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lc/m/x/a/gv/e;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc/m/x/a/gv/e;->mMenuVisible:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lc/m/x/a/gv/e;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    iget-object v1, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v1, p1}, Lc/m/x/a/gv/o;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method performReallyStop()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->m()V

    :cond_0
    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mLoadersStarted:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lc/m/x/a/gv/e;->mLoadersStarted:Z

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    iget-object v1, p0, Lc/m/x/a/gv/e;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lc/m/x/a/gv/e;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Lc/m/x/a/gv/j;->a(Ljava/lang/String;ZZ)Lc/m/x/a/gv/y;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    iget-boolean v0, v0, Lc/m/x/a/gv/j;->h:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    invoke-virtual {v0}, Lc/m/x/a/gv/y;->c()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    invoke-virtual {v0}, Lc/m/x/a/gv/y;->d()V

    goto :goto_0
.end method

.method performResume()V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->f()V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->c()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->onResume()V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lc/m/x/a/gv/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/m/x/a/gv/ab;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->j()V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->c()Z

    :cond_2
    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0, p1}, Lc/m/x/a/gv/e;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->e()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->f()V

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->c()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->onStart()V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lc/m/x/a/gv/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/m/x/a/gv/ab;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->i()V

    :cond_2
    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mLoaderManager:Lc/m/x/a/gv/y;

    invoke-virtual {v0}, Lc/m/x/a/gv/y;->g()V

    :cond_3
    return-void
.end method

.method performStop()V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mChildFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0}, Lc/m/x/a/gv/o;->l()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->onStop()V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lc/m/x/a/gv/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/m/x/a/gv/ab;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Lc/m/x/a/gv/e;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/m/x/a/gv/e;->mSavedViewState:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    invoke-virtual {p0, p1}, Lc/m/x/a/gv/e;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Lc/m/x/a/gv/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/m/x/a/gv/ab;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lc/m/x/a/gv/e;->mIndex:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lc/m/x/a/gv/e;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lc/m/x/a/gv/e;->mHasMenu:Z

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->a()V

    :cond_0
    return-void
.end method

.method final setIndex(ILc/m/x/a/gv/e;)V
    .locals 2

    iput p1, p0, Lc/m/x/a/gv/e;->mIndex:I

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lc/m/x/a/gv/e;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc/m/x/a/gv/e;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/e;->mWho:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:fragment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lc/m/x/a/gv/e;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/m/x/a/gv/e;->mWho:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInitialSavedState(Lc/m/x/a/gv/h;)V
    .locals 2

    iget v0, p0, Lc/m/x/a/gv/e;->mIndex:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lc/m/x/a/gv/h;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lc/m/x/a/gv/h;->a:Landroid/os/Bundle;

    :goto_0
    iput-object v0, p0, Lc/m/x/a/gv/e;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lc/m/x/a/gv/e;->mMenuVisible:Z

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mHasMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/m/x/a/gv/e;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    invoke-virtual {v0}, Lc/m/x/a/gv/j;->a()V

    :cond_0
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mParentFragment:Lc/m/x/a/gv/e;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t retain fragements that are nested in other fragments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lc/m/x/a/gv/e;->mRetainInstance:Z

    return-void
.end method

.method public setTargetFragment(Lc/m/x/a/gv/e;I)V
    .locals 0

    iput-object p1, p0, Lc/m/x/a/gv/e;->mTarget:Lc/m/x/a/gv/e;

    iput p2, p0, Lc/m/x/a/gv/e;->mTargetRequestCode:I

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    iget-boolean v0, p0, Lc/m/x/a/gv/e;->mUserVisibleHint:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lc/m/x/a/gv/e;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lc/m/x/a/gv/e;->mFragmentManager:Lc/m/x/a/gv/o;

    invoke-virtual {v0, p0}, Lc/m/x/a/gv/o;->a(Lc/m/x/a/gv/e;)V

    :cond_0
    iput-boolean p1, p0, Lc/m/x/a/gv/e;->mUserVisibleHint:Z

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc/m/x/a/gv/e;->mDeferStart:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/e;Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/e;->mActivity:Lc/m/x/a/gv/j;

    invoke-virtual {v0, p0, p1, p2}, Lc/m/x/a/gv/j;->a(Lc/m/x/a/gv/e;Landroid/content/Intent;I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lc/m/x/a/gv/ai;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Lc/m/x/a/gv/e;->mIndex:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/m/x/a/gv/e;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Lc/m/x/a/gv/e;->mFragmentId:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/m/x/a/gv/e;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lc/m/x/a/gv/e;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/m/x/a/gv/e;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method
