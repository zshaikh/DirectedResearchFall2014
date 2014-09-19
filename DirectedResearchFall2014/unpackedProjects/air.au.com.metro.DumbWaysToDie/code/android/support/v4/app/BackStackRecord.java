package android.support.v4.app;

import android.util.*;
import android.support.v4.util.*;
import java.io.*;
import java.util.*;

final class BackStackRecord extends FragmentTransaction implements BackStackEntry, Runnable
{
    static final int OP_ADD = 1;
    static final int OP_ATTACH = 7;
    static final int OP_DETACH = 6;
    static final int OP_HIDE = 4;
    static final int OP_NULL = 0;
    static final int OP_REMOVE = 3;
    static final int OP_REPLACE = 2;
    static final int OP_SHOW = 5;
    static final String TAG = "FragmentManager";
    boolean mAddToBackStack;
    boolean mAllowAddToBackStack;
    int mBreadCrumbShortTitleRes;
    CharSequence mBreadCrumbShortTitleText;
    int mBreadCrumbTitleRes;
    CharSequence mBreadCrumbTitleText;
    boolean mCommitted;
    int mEnterAnim;
    int mExitAnim;
    Op mHead;
    int mIndex;
    final FragmentManagerImpl mManager;
    String mName;
    int mNumOp;
    int mPopEnterAnim;
    int mPopExitAnim;
    Op mTail;
    int mTransition;
    int mTransitionStyle;
    
    public BackStackRecord(final FragmentManagerImpl mManager) {
        super();
        this.mAllowAddToBackStack = true;
        this.mIndex = -1;
        this.mManager = mManager;
    }
    
    private void doAddOp(final int mContainerId, final Fragment fragment, final String s, final int cmd) {
        fragment.mFragmentManager = this.mManager;
        if (s != null) {
            if (fragment.mTag != null && !s.equals(fragment.mTag)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + s);
            }
            fragment.mTag = s;
        }
        if (mContainerId != 0) {
            if (fragment.mFragmentId != 0 && fragment.mFragmentId != mContainerId) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + mContainerId);
            }
            fragment.mFragmentId = mContainerId;
            fragment.mContainerId = mContainerId;
        }
        final Op op = new Op();
        op.cmd = cmd;
        op.fragment = fragment;
        this.addOp(op);
    }
    
    @Override
    public FragmentTransaction add(final int n, final Fragment fragment) {
        this.doAddOp(n, fragment, null, 1);
        return this;
    }
    
    @Override
    public FragmentTransaction add(final int n, final Fragment fragment, final String s) {
        this.doAddOp(n, fragment, s, 1);
        return this;
    }
    
    @Override
    public FragmentTransaction add(final Fragment fragment, final String s) {
        this.doAddOp(0, fragment, s, 1);
        return this;
    }
    
    void addOp(final Op op) {
        if (this.mHead == null) {
            this.mTail = op;
            this.mHead = op;
        }
        else {
            op.prev = this.mTail;
            this.mTail.next = op;
            this.mTail = op;
        }
        op.enterAnim = this.mEnterAnim;
        op.exitAnim = this.mExitAnim;
        op.popEnterAnim = this.mPopEnterAnim;
        op.popExitAnim = this.mPopExitAnim;
        ++this.mNumOp;
    }
    
    @Override
    public FragmentTransaction addToBackStack(final String mName) {
        if (!this.mAllowAddToBackStack) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.mAddToBackStack = true;
        this.mName = mName;
        return this;
    }
    
    @Override
    public FragmentTransaction attach(final Fragment fragment) {
        final Op op = new Op();
        op.cmd = 7;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }
    
    void bumpBackStackNesting(final int i) {
        if (this.mAddToBackStack) {
            if (FragmentManagerImpl.DEBUG) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            for (Op op = this.mHead; op != null; op = op.next) {
                if (op.fragment != null) {
                    final Fragment fragment = op.fragment;
                    fragment.mBackStackNesting += i;
                    if (FragmentManagerImpl.DEBUG) {
                        Log.v("FragmentManager", "Bump nesting of " + op.fragment + " to " + op.fragment.mBackStackNesting);
                    }
                }
                if (op.removed != null) {
                    for (int j = op.removed.size() - 1; j >= 0; --j) {
                        final Fragment obj = op.removed.get(j);
                        obj.mBackStackNesting += i;
                        if (FragmentManagerImpl.DEBUG) {
                            Log.v("FragmentManager", "Bump nesting of " + obj + " to " + obj.mBackStackNesting);
                        }
                    }
                }
            }
        }
    }
    
    @Override
    public int commit() {
        return this.commitInternal(false);
    }
    
    @Override
    public int commitAllowingStateLoss() {
        return this.commitInternal(true);
    }
    
    int commitInternal(final boolean b) {
        if (this.mCommitted) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v("FragmentManager", "Commit: " + this);
            this.dump("  ", null, new PrintWriter(new LogWriter("FragmentManager")), null);
        }
        this.mCommitted = true;
        if (this.mAddToBackStack) {
            this.mIndex = this.mManager.allocBackStackIndex(this);
        }
        else {
            this.mIndex = -1;
        }
        this.mManager.enqueueAction(this, b);
        return this.mIndex;
    }
    
    @Override
    public FragmentTransaction detach(final Fragment fragment) {
        final Op op = new Op();
        op.cmd = 6;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }
    
    @Override
    public FragmentTransaction disallowAddToBackStack() {
        if (this.mAddToBackStack) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.mAllowAddToBackStack = false;
        return this;
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        this.dump(s, printWriter, true);
    }
    
    public void dump(final String s, final PrintWriter printWriter, final boolean b) {
        if (b) {
            printWriter.print(s);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(s);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.mTransitionStyle));
            }
            if (this.mEnterAnim != 0 || this.mExitAnim != 0) {
                printWriter.print(s);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (this.mPopEnterAnim != 0 || this.mPopExitAnim != 0) {
                printWriter.print(s);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (this.mBreadCrumbTitleRes != 0 || this.mBreadCrumbTitleText != null) {
                printWriter.print(s);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (this.mBreadCrumbShortTitleRes != 0 || this.mBreadCrumbShortTitleText != null) {
                printWriter.print(s);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (this.mHead != null) {
            printWriter.print(s);
            printWriter.println("Operations:");
            final String string = s + "    ";
            Op op = this.mHead;
            for (int i = 0; op != null; op = op.next, ++i) {
                String string2 = null;
                switch (op.cmd) {
                    default: {
                        string2 = "cmd=" + op.cmd;
                        break;
                    }
                    case 0: {
                        string2 = "NULL";
                        break;
                    }
                    case 1: {
                        string2 = "ADD";
                        break;
                    }
                    case 2: {
                        string2 = "REPLACE";
                        break;
                    }
                    case 3: {
                        string2 = "REMOVE";
                        break;
                    }
                    case 4: {
                        string2 = "HIDE";
                        break;
                    }
                    case 5: {
                        string2 = "SHOW";
                        break;
                    }
                    case 6: {
                        string2 = "DETACH";
                        break;
                    }
                    case 7: {
                        string2 = "ATTACH";
                        break;
                    }
                }
                printWriter.print(s);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(string2);
                printWriter.print(" ");
                printWriter.println(op.fragment);
                if (b) {
                    if (op.enterAnim != 0 || op.exitAnim != 0) {
                        printWriter.print(s);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(op.enterAnim));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(op.exitAnim));
                    }
                    if (op.popEnterAnim != 0 || op.popExitAnim != 0) {
                        printWriter.print(s);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(op.popEnterAnim));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(op.popExitAnim));
                    }
                }
                if (op.removed != null && op.removed.size() > 0) {
                    for (int j = 0; j < op.removed.size(); ++j) {
                        printWriter.print(string);
                        if (op.removed.size() == 1) {
                            printWriter.print("Removed: ");
                        }
                        else {
                            if (j == 0) {
                                printWriter.println("Removed:");
                            }
                            printWriter.print(string);
                            printWriter.print("  #");
                            printWriter.print(j);
                            printWriter.print(": ");
                        }
                        printWriter.println(op.removed.get(j));
                    }
                }
            }
        }
    }
    
    @Override
    public CharSequence getBreadCrumbShortTitle() {
        if (this.mBreadCrumbShortTitleRes != 0) {
            return this.mManager.mActivity.getText(this.mBreadCrumbShortTitleRes);
        }
        return this.mBreadCrumbShortTitleText;
    }
    
    @Override
    public int getBreadCrumbShortTitleRes() {
        return this.mBreadCrumbShortTitleRes;
    }
    
    @Override
    public CharSequence getBreadCrumbTitle() {
        if (this.mBreadCrumbTitleRes != 0) {
            return this.mManager.mActivity.getText(this.mBreadCrumbTitleRes);
        }
        return this.mBreadCrumbTitleText;
    }
    
    @Override
    public int getBreadCrumbTitleRes() {
        return this.mBreadCrumbTitleRes;
    }
    
    @Override
    public int getId() {
        return this.mIndex;
    }
    
    @Override
    public String getName() {
        return this.mName;
    }
    
    public int getTransition() {
        return this.mTransition;
    }
    
    public int getTransitionStyle() {
        return this.mTransitionStyle;
    }
    
    @Override
    public FragmentTransaction hide(final Fragment fragment) {
        final Op op = new Op();
        op.cmd = 4;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }
    
    @Override
    public boolean isAddToBackStackAllowed() {
        return this.mAllowAddToBackStack;
    }
    
    @Override
    public boolean isEmpty() {
        return this.mNumOp == 0;
    }
    
    public void popFromBackStack(final boolean b) {
        if (FragmentManagerImpl.DEBUG) {
            Log.v("FragmentManager", "popFromBackStack: " + this);
            this.dump("  ", null, new PrintWriter(new LogWriter("FragmentManager")), null);
        }
        this.bumpBackStackNesting(-1);
        for (Op op = this.mTail; op != null; op = op.prev) {
            switch (op.cmd) {
                default: {
                    throw new IllegalArgumentException("Unknown cmd: " + op.cmd);
                }
                case 1: {
                    final Fragment fragment = op.fragment;
                    fragment.mNextAnim = op.popExitAnim;
                    this.mManager.removeFragment(fragment, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                }
                case 2: {
                    final Fragment fragment2 = op.fragment;
                    if (fragment2 != null) {
                        fragment2.mNextAnim = op.popExitAnim;
                        this.mManager.removeFragment(fragment2, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    }
                    if (op.removed != null) {
                        for (int i = 0; i < op.removed.size(); ++i) {
                            final Fragment fragment3 = op.removed.get(i);
                            fragment3.mNextAnim = op.popEnterAnim;
                            this.mManager.addFragment(fragment3, false);
                        }
                        break;
                    }
                    break;
                }
                case 3: {
                    final Fragment fragment4 = op.fragment;
                    fragment4.mNextAnim = op.popEnterAnim;
                    this.mManager.addFragment(fragment4, false);
                    break;
                }
                case 4: {
                    final Fragment fragment5 = op.fragment;
                    fragment5.mNextAnim = op.popEnterAnim;
                    this.mManager.showFragment(fragment5, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                }
                case 5: {
                    final Fragment fragment6 = op.fragment;
                    fragment6.mNextAnim = op.popExitAnim;
                    this.mManager.hideFragment(fragment6, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                }
                case 6: {
                    final Fragment fragment7 = op.fragment;
                    fragment7.mNextAnim = op.popEnterAnim;
                    this.mManager.attachFragment(fragment7, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                }
                case 7: {
                    final Fragment fragment8 = op.fragment;
                    fragment8.mNextAnim = op.popEnterAnim;
                    this.mManager.detachFragment(fragment8, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
                    break;
                }
            }
        }
        if (b) {
            this.mManager.moveToState(this.mManager.mCurState, FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle, true);
        }
        if (this.mIndex >= 0) {
            this.mManager.freeBackStackIndex(this.mIndex);
            this.mIndex = -1;
        }
    }
    
    @Override
    public FragmentTransaction remove(final Fragment fragment) {
        final Op op = new Op();
        op.cmd = 3;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }
    
    @Override
    public FragmentTransaction replace(final int n, final Fragment fragment) {
        return this.replace(n, fragment, null);
    }
    
    @Override
    public FragmentTransaction replace(final int n, final Fragment fragment, final String s) {
        if (n == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        this.doAddOp(n, fragment, s, 2);
        return this;
    }
    
    @Override
    public void run() {
        if (FragmentManagerImpl.DEBUG) {
            Log.v("FragmentManager", "Run: " + this);
        }
        if (this.mAddToBackStack && this.mIndex < 0) {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
        this.bumpBackStackNesting(1);
        for (Op op = this.mHead; op != null; op = op.next) {
            switch (op.cmd) {
                default: {
                    throw new IllegalArgumentException("Unknown cmd: " + op.cmd);
                }
                case 1: {
                    final Fragment fragment = op.fragment;
                    fragment.mNextAnim = op.enterAnim;
                    this.mManager.addFragment(fragment, false);
                    break;
                }
                case 2: {
                    Fragment fragment2 = op.fragment;
                    if (this.mManager.mAdded != null) {
                        for (int i = 0; i < this.mManager.mAdded.size(); ++i) {
                            final Fragment obj = this.mManager.mAdded.get(i);
                            if (FragmentManagerImpl.DEBUG) {
                                Log.v("FragmentManager", "OP_REPLACE: adding=" + fragment2 + " old=" + obj);
                            }
                            if (fragment2 == null || obj.mContainerId == fragment2.mContainerId) {
                                if (obj == fragment2) {
                                    fragment2 = null;
                                    op.fragment = null;
                                }
                                else {
                                    if (op.removed == null) {
                                        op.removed = new ArrayList<Fragment>();
                                    }
                                    op.removed.add(obj);
                                    obj.mNextAnim = op.exitAnim;
                                    if (this.mAddToBackStack) {
                                        ++obj.mBackStackNesting;
                                        if (FragmentManagerImpl.DEBUG) {
                                            Log.v("FragmentManager", "Bump nesting of " + obj + " to " + obj.mBackStackNesting);
                                        }
                                    }
                                    this.mManager.removeFragment(obj, this.mTransition, this.mTransitionStyle);
                                }
                            }
                        }
                    }
                    if (fragment2 != null) {
                        fragment2.mNextAnim = op.enterAnim;
                        this.mManager.addFragment(fragment2, false);
                        break;
                    }
                    break;
                }
                case 3: {
                    final Fragment fragment3 = op.fragment;
                    fragment3.mNextAnim = op.exitAnim;
                    this.mManager.removeFragment(fragment3, this.mTransition, this.mTransitionStyle);
                    break;
                }
                case 4: {
                    final Fragment fragment4 = op.fragment;
                    fragment4.mNextAnim = op.exitAnim;
                    this.mManager.hideFragment(fragment4, this.mTransition, this.mTransitionStyle);
                    break;
                }
                case 5: {
                    final Fragment fragment5 = op.fragment;
                    fragment5.mNextAnim = op.enterAnim;
                    this.mManager.showFragment(fragment5, this.mTransition, this.mTransitionStyle);
                    break;
                }
                case 6: {
                    final Fragment fragment6 = op.fragment;
                    fragment6.mNextAnim = op.exitAnim;
                    this.mManager.detachFragment(fragment6, this.mTransition, this.mTransitionStyle);
                    break;
                }
                case 7: {
                    final Fragment fragment7 = op.fragment;
                    fragment7.mNextAnim = op.enterAnim;
                    this.mManager.attachFragment(fragment7, this.mTransition, this.mTransitionStyle);
                    break;
                }
            }
        }
        this.mManager.moveToState(this.mManager.mCurState, this.mTransition, this.mTransitionStyle, true);
        if (this.mAddToBackStack) {
            this.mManager.addBackStackState(this);
        }
    }
    
    @Override
    public FragmentTransaction setBreadCrumbShortTitle(final int mBreadCrumbShortTitleRes) {
        this.mBreadCrumbShortTitleRes = mBreadCrumbShortTitleRes;
        this.mBreadCrumbShortTitleText = null;
        return this;
    }
    
    @Override
    public FragmentTransaction setBreadCrumbShortTitle(final CharSequence mBreadCrumbShortTitleText) {
        this.mBreadCrumbShortTitleRes = 0;
        this.mBreadCrumbShortTitleText = mBreadCrumbShortTitleText;
        return this;
    }
    
    @Override
    public FragmentTransaction setBreadCrumbTitle(final int mBreadCrumbTitleRes) {
        this.mBreadCrumbTitleRes = mBreadCrumbTitleRes;
        this.mBreadCrumbTitleText = null;
        return this;
    }
    
    @Override
    public FragmentTransaction setBreadCrumbTitle(final CharSequence mBreadCrumbTitleText) {
        this.mBreadCrumbTitleRes = 0;
        this.mBreadCrumbTitleText = mBreadCrumbTitleText;
        return this;
    }
    
    @Override
    public FragmentTransaction setCustomAnimations(final int n, final int n2) {
        return this.setCustomAnimations(n, n2, 0, 0);
    }
    
    @Override
    public FragmentTransaction setCustomAnimations(final int mEnterAnim, final int mExitAnim, final int mPopEnterAnim, final int mPopExitAnim) {
        this.mEnterAnim = mEnterAnim;
        this.mExitAnim = mExitAnim;
        this.mPopEnterAnim = mPopEnterAnim;
        this.mPopExitAnim = mPopExitAnim;
        return this;
    }
    
    @Override
    public FragmentTransaction setTransition(final int mTransition) {
        this.mTransition = mTransition;
        return this;
    }
    
    @Override
    public FragmentTransaction setTransitionStyle(final int mTransitionStyle) {
        this.mTransitionStyle = mTransitionStyle;
        return this;
    }
    
    @Override
    public FragmentTransaction show(final Fragment fragment) {
        final Op op = new Op();
        op.cmd = 5;
        op.fragment = fragment;
        this.addOp(op);
        return this;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            sb.append(" #");
            sb.append(this.mIndex);
        }
        if (this.mName != null) {
            sb.append(" ");
            sb.append(this.mName);
        }
        sb.append("}");
        return sb.toString();
    }
    
    static final class Op
    {
        int cmd;
        int enterAnim;
        int exitAnim;
        Fragment fragment;
        Op next;
        int popEnterAnim;
        int popExitAnim;
        Op prev;
        ArrayList<Fragment> removed;
    }
}
